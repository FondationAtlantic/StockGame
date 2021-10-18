//using ImageSharp;
//using ImageSharp.Processing;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Hosting;
using StockGame.Data;
using StockGame.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using System.Reflection;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace StockGame.Pages.Scenarios
{
    [Authorize(Roles = "Admin")]
    public class EditModel : StockGame.Pages.StockPageModel
    {
        private readonly IHostEnvironment _environment;

        public EditModel(UserManager<ApplicationUser> userManager, StockGameContext context, IHostEnvironment environment) : base(userManager, context)
        {
            _environment = environment;
        }

        [BindProperty]
        public Scenario Scenario { get; set; }

        [BindProperty]
        public List<Episode> Episodes { get; set; }

        [BindProperty]
        public List<ScenarioEquity> ScenarioEquities { get; set; }

        public string EquitySort { get; set; }
        public string IndustrySort { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id, string sortOrder)
        {
            await FindActiveGameAndTeam();

            if (id == null)
                return NotFound();

            EquitySort = sortOrder == "Equity" ? "Equity_desc" : "Equity";
            IndustrySort = String.IsNullOrEmpty(sortOrder) ? "Industry_desc" : "";

            Scenario = await Context.Scenarios.Include(s => s.Episodes)
                                              .Include(s => s.ScenarioEquities).ThenInclude(se => se.Equity).ThenInclude(e => e.Industry)
                                              .SingleOrDefaultAsync(s => s.Id == id);

            if (Scenario == null)
                return NotFound();

            Episodes = Scenario.Episodes.OrderBy(ep => ep.EpisodeIndex).ToList();

            switch (sortOrder)
            {
                case "Equity_desc":
                    ScenarioEquities = Scenario.ScenarioEquities.OrderByDescending(se => se.Equity.Name).ToList();
                    break;
                case "Equity":
                    ScenarioEquities = Scenario.ScenarioEquities.OrderBy(se => se.Equity.Name).ToList();
                    break;
                case "Industry_desc":
                    ScenarioEquities = Scenario.ScenarioEquities.OrderByDescending(se => se.Equity.Industry.Name).ToList();
                    break;
                default:
                    ScenarioEquities = Scenario.ScenarioEquities.OrderBy(se => se.Equity.Industry.Name).ToList();
                    break;
            }

            return Page();
        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
                return await OnGetAsync(Scenario.Id, null);

            if (HttpContext.Request.Form.Files == null
                || HttpContext.Request.Form.Files.Count != Episodes.Count + ScenarioEquities.Count)
                return await OnGetAsync(Scenario.Id, null);

            //Is this a CSV Import submit ?
            for (int i = Episodes.Count; i < Episodes.Count + ScenarioEquities.Count; i++)
            {
                IFormFile file = HttpContext.Request.Form.Files[i];
                if (file.Length > 0)
                {
                    ScenarioEquity se = ScenarioEquities[i - Episodes.Count];
                    if (await ImportCsvEquityEpisodeData(file, se, "ScenarioEquities[" + (i - Episodes.Count).ToString() + "].Id"))
                        return RedirectToPage("./EpisodeEquityInfos", new { id = se.Id });
                    else
                        return await OnGetAsync(Scenario.Id, null);
                }
            }

            Context.Attach(Scenario).State = EntityState.Modified;
            for (int i = 0; i < Episodes.Count; i++)
            {
                Episode ep = Episodes[i];

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

                    ep.NewsImgPath = "~/images/db/upload_news_img/" + newFileName;

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
                        if (srcImage.Width > 500 || srcImage.Height > 250)
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

                Context.Attach(ep).State = EntityState.Modified;
            }

            try
            {
                await Context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ScenarioExists(Scenario.Id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return RedirectToPage("./Index");
        }

        private static object ChangeType(string value, Type conversion)
        {
            var t = conversion;

            if (t.IsGenericType && t.GetGenericTypeDefinition().Equals(typeof(Nullable<>)))
            {
                value = Regex.Replace(value, @"\s+", "");
                if (String.IsNullOrEmpty(value))
                    return null;

                t = Nullable.GetUnderlyingType(t);
            }
            else if (t.IsPrimitive)
                value = Regex.Replace(value, @"\s+", "");

            return Convert.ChangeType(value, t);
        }

        private static string[] SplitCSV(string input)
        {
            Regex csvSplit = new Regex("(?:^|,)(\"(?:[^\"]+|\"\")*\"|[^,]*)", RegexOptions.Compiled);
            List<string> list = new List<string>();
            string curr = null;
            foreach (Match match in csvSplit.Matches(input))
            {
                curr = match.Value;
                if (0 == curr.Length)
                {
                    list.Add("");
                }

                list.Add(curr.TrimStart(',').Trim('"').Replace(',', '.'));
            }

            return list.ToArray();
        }

        private async Task<bool> ImportCsvEquityEpisodeData(IFormFile file, ScenarioEquity scenarioEquity, string modelStateProperty)
        {
            try
            {
                using (Stream stream = file.OpenReadStream())
                {
                    using (StreamReader reader = new StreamReader(stream))
                    {
                        string headerLine = reader.ReadLine();
                        if (headerLine == null)
                        {
                            ModelState.AddModelError(modelStateProperty, "File header not found.");
                            return false;
                        }

                        string[] columnHeaders = SplitCSV(headerLine);
                        if (columnHeaders.Length < 1 || columnHeaders[0] != "EpisodeIndex")
                        {
                            ModelState.AddModelError(modelStateProperty, "First column must be named EpisodeIndex.");
                            return false;
                        }
                        if (columnHeaders.Length < 2)
                        {
                            ModelState.AddModelError(modelStateProperty, "Need at least 2 columns.");
                            return false;
                        }

                        PropertyInfo[] properties = new PropertyInfo[columnHeaders.Length];
                        for (int i = 1; i < columnHeaders.Length; i++)
                        {
                            PropertyInfo prop = typeof(EpisodeEquityInfo).GetProperty(columnHeaders[i]);
                            if (prop == null)
                            {
                                ModelState.AddModelError(modelStateProperty, String.Format("{0} is not a property of EpisodeEquityInfo.", columnHeaders[i]));
                                return false;
                            }
                            properties[i] = prop;
                        }

                        List<EpisodeEquityInfo> episodeEquityInfos = await Context.EpisodeEquityInfos
                            .Include(eei => eei.Episode)
                            .Where(eei => eei.EquityId == scenarioEquity.EquityId && eei.Episode.ScenarioId == scenarioEquity.ScenarioId)
                            .OrderBy(eei => eei.Episode.EpisodeIndex)
                            .ToListAsync();

                        string line;
                        int lineIndex = 1;
                        while ((line = reader.ReadLine()) != null)
                        {
                            string[] row = SplitCSV(line);
                            if (row.Length != columnHeaders.Length)
                            {
                                ModelState.AddModelError(modelStateProperty, String.Format("Line {0} has wrong field count.", lineIndex));
                                return false;
                            }

                            if (lineIndex > episodeEquityInfos.Count)
                            {
                                ModelState.AddModelError(modelStateProperty, String.Format("Too many lines in file. Expecting {0} episodes.", episodeEquityInfos.Count));
                                return false;
                            }

                            EpisodeEquityInfo eei = episodeEquityInfos[lineIndex - 1];
                            if (row[0] != eei.Episode.EpisodeIndex.ToString())
                            {
                                ModelState.AddModelError(modelStateProperty, String.Format("Line {0} should be EpisodeIndex {1}.", lineIndex, eei.Episode.EpisodeIndex));
                                return false;
                            }

                            for (int i = 1; i < columnHeaders.Length; i++)
                            {
                                PropertyInfo prop = properties[i];
                                string value = row[i];
                                if (prop.PropertyType == typeof(bool))
                                    value = String.IsNullOrWhiteSpace(value) ? "false" : "true";
                                try
                                {
                                    prop.SetValue(eei, ChangeType(value, prop.PropertyType));
                                }
                                catch (FormatException ex)
                                {
                                    ModelState.AddModelError(modelStateProperty, String.Format("FormatException setting property {0} to value [{1}]. Error: {2}", prop.Name, value, ex.Message));
                                    return false;
                                }
                            }

                            Context.Attach(eei).State = EntityState.Modified;
                            lineIndex++;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(modelStateProperty, String.Format("Unhandled exception! ({0})", ex.Message));
                return false;
            }

            await Context.SaveChangesAsync();

            return true;
        }

        private bool ScenarioExists(int id)
        {
            return Context.Scenarios.Any(e => e.Id == id);
        }
    }
}
