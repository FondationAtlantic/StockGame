using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using System.Threading.Tasks;
//using ImageSharp;
//using ImageSharp.Processing;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Hosting;
using StockGame.Data;
using StockGame.Models;
using StockGame.Models.ViewModels;

namespace StockGame.Pages.Scenarios
{
    [Authorize(Roles = "Admin")]
    public class EpisodeEquityInfosModel : StockGame.Pages.StockPageModel
    {
        private readonly IHostEnvironment _environment;

        public EpisodeEquityInfosModel(UserManager<ApplicationUser> userManager, StockGameContext context, IHostEnvironment environment) : base(userManager, context)
        {
            _environment = environment;
        }

        [BindProperty]
        public List<EpisodeEquityInfo> EpisodeEquityInfos { get; set; }

        [BindProperty]
        public bool FilterResults { get; set; }

        [BindProperty]
        public int ScenarioEquityId { get; set; }

        public ScenarioEquity ScenarioEquity { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id, bool? filterResults)
        {
            await FindActiveGameAndTeam();

            if (id == null)
                return NotFound();

            FilterResults = filterResults.GetValueOrDefault(false);

            //id is for a ScenarioEquity
            ScenarioEquity = await Context.ScenarioEquities
                .Include(se => se.Equity)
                .Include(se => se.Scenario)
                .SingleOrDefaultAsync(se => se.Id == id);
            if (ScenarioEquity == null)
                return NotFound();

            ScenarioEquityId = ScenarioEquity.Id;

            EpisodeEquityInfos = await Context.EpisodeEquityInfos
                .Include(eei => eei.Category)
                .Include(eei => eei.Episode)
                    .ThenInclude(ep => ep.Scenario)
                .Include(eei => eei.Equity)
                .Where(eei =>    eei.EquityId == ScenarioEquity.EquityId 
                              && eei.Episode.ScenarioId == ScenarioEquity.ScenarioId
                              && (!FilterResults || eei.AnnounceFinancialResults))
                .OrderBy(eei => eei.Episode.EpisodeIndex)
                .ToListAsync();

            return Page();
        }

        public async Task<IActionResult> OnPostAsync()
        {
            await FindActiveGameAndTeam();

            if (!ModelState.IsValid)
                return Page();

            if (   HttpContext.Request.Form.Files == null 
                || HttpContext.Request.Form.Files.Count != EpisodeEquityInfos.Count)
                return Page();

            for(int i = 0; i < EpisodeEquityInfos.Count; i++)
            {
                EpisodeEquityInfo eei = EpisodeEquityInfos[i];

                //TODO YLA duplicate code
                IFormFile file = HttpContext.Request.Form.Files[i];
                if (file.Length > 0)
                {
                    //Getting FileName
                    string fileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Trim('"');

                    // concating  FileName + FileExtension
                    string newFileName = Convert.ToString(Guid.NewGuid()) + Path.GetExtension(fileName);

                    // Combines two strings into a path.
                    fileName = Path.Combine(_environment.ContentRootPath, "images/db/upload_news_img") + $@"\{newFileName}";

                    eei.NewsImgPath = "~/images/db/upload_news_img/" + newFileName;

                    using (FileStream fs = System.IO.File.Create(fileName))
                    {
                        file.CopyTo(fs);
                        fs.Flush();
                    }

                    //TODO YLA Thumbnail Resize
                    //resize if necessary
                    /*
                    using (Image<Rgba32> srcImage = Image.Load(fileName))
                    {
                        if(srcImage.Width > 500 || srcImage.Height > 250)
                        {
                            ResizeOptions resizeOptions = new ResizeOptions
                            {
                                Mode = ResizeMode.Max,
                                Sampler = new BicubicResampler(),
                                Size = new SixLabors.Primitives.Size(500, 250)
                            };

                            using (Image<Rgba32> thumbImage = srcImage.Resize(resizeOptions))
                            {
                                thumbImage.Save(fileName);
                            }
                        }
                    }*/
                }

                Context.Attach(eei).State = EntityState.Modified;
            }

            await Context.SaveChangesAsync();

            return RedirectToPage("./EpisodeEquityInfos", new { id = ScenarioEquityId, filterResults = FilterResults });
        }
    }
}
