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
using Microsoft.Extensions.Hosting;
using SixLabors.ImageSharp.Processing;
using StockGame.Data;
using StockGame.Models;

namespace StockGame.Pages.Equities
{
    [Authorize(Roles = "Admin")]
    public class CreateModel : StockPageModel
    {
        private readonly IHostEnvironment _environment;

        public CreateModel(UserManager<ApplicationUser> userManager, StockGameContext context, IHostEnvironment environment) : base(userManager, context)
        {
            _environment = environment;
        }

        public async Task<IActionResult> OnGetAsync()
        {
            await FindActiveGameAndTeam();

            ViewData["IndustryId"] = new SelectList(Context.Industries, "Id", "Name");
            return Page();
        }

        [BindProperty]
        public Equity Equity { get; set; }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
                return Page();

            //TODO YLA duplicate code
            if (HttpContext.Request.Form.Files == null || HttpContext.Request.Form.Files.Count != 1)
                return Page();

            IFormFile file = HttpContext.Request.Form.Files[0];
            if (file.Length > 0)
            {
                //Getting FileName
                string fileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Trim('"');

                // concating  FileName + FileExtension
                string newFileName = Convert.ToString(Guid.NewGuid()) + Path.GetExtension(fileName);

                // Combines two strings into a path.
                fileName = Path.Combine(_environment.ContentRootPath, "images/db/upload_equity_img") + $@"\{newFileName}";

                Equity.ImgPath = "~/images/db/upload_equity_img/" + newFileName;
                Equity.ThumbPath = "~/images/db/upload_equity_thumb/" + newFileName;

                using (FileStream fs = System.IO.File.Create(fileName))
                {
                    file.CopyTo(fs);
                    fs.Flush();
                }

                //TODO YLA Thumbnail Resize
                /*bool shouldResizeSource = false;

                //generate thumbnail
                ResizeOptions resizeOptions = new ResizeOptions
                {
                    Mode = ResizeMode.Max,
                    Sampler = new BicubicResampler(),
                    Size = new SixLabors.Primitives.Size(70, 50)
                };

                using (Image<Rgba32> srcImage = Image.Load(fileName))
                {
                    if (srcImage.Width > 250 || srcImage.Height > 250)
                        shouldResizeSource = true;

                    string thumbFileName = Path.Combine(_environment.WebRootPath, "images/db/upload_equity_thumb") + $@"\{newFileName}";
                    using (Image<Rgba32> thumbImage = srcImage.Resize(resizeOptions))
                    {
                        thumbImage.Save(thumbFileName);
                    }
                }

                if (shouldResizeSource)
                {
                    using (Image<Rgba32> srcImage = Image.Load(fileName))
                    {
                        resizeOptions.Size = new SixLabors.Primitives.Size(250, 250);
                        using (Image<Rgba32> resizedImage = srcImage.Resize(resizeOptions))
                        {
                            resizedImage.Save(fileName);
                        }
                    }
                }*/
            }

            Context.Equities.Add(Equity);
            await Context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}