using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using StockGame.Data;
using StockGame.Models;
using StockGame.Models.ViewModels;

namespace StockGame.Pages.Portfolio
{
    [Authorize(Roles = "Student,Admin")]
    public class TradeModel : StockGame.Pages.StockPageModel
    {
        public TradeModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        public IActionResult PopulatePage()
        {
            TradeableEquities = Portfolio.Items.Where(i => i.AllowTransactions);

            ViewData["EquityId"] = new SelectList(
                        TradeableEquities.Select(i => new SelectListItem
                        {
                            Value = i.EquityId.ToString(),
                            Text = i.Equity.Name + " (" + string.Format("{0:C}", Convert.ToDecimal(i.Price)) + ")"
                        }),
                        "Value",
                        "Text");
            ViewData["TransactionReasonId"] = new SelectList(Context.TransactionReasons, "Id", "Name");
            return Page();
        }

        [BindProperty]
        public TransactionEntry TransactionEntry { get; set; }

        public IEnumerable<PortfolioItem> TradeableEquities { get; set; }

        public StockGame.Models.ViewModels.PortfolioHistoryItem Portfolio { get; set; }

        public async Task<IActionResult> OnGetAsync()
        {
            await FetchPortfolio();

            if (Portfolio == null)
                return NotFound();

            return PopulatePage();
        }

        public async Task<IActionResult> OnPostAsync()
        {
            await FetchPortfolio();
            if (Portfolio == null)
                return NotFound();

            PortfolioItem item = Portfolio.Items.Where(i => i.EquityId == TransactionEntry.EquityId).SingleOrDefault();
            if (item == null)
                ModelState.AddModelError("TransactionEntry.EquityId", "Compagnie inexistante!");
            else if (TransactionEntry.Type == TransactionEntry.TradeType.Buy)
            {
                if (item.Price * TransactionEntry.Amount > Portfolio.Cash)
                    ModelState.AddModelError("TransactionEntry.Amount", "Argent disponible insuffisant pour l'achat!");
            }
            else if (TransactionEntry.Amount > item.Amount) //sell
                ModelState.AddModelError("TransactionEntry.Amount", "Quantité disponible insuffisante pour la vente!");

            if (!ModelState.IsValid)
                return PopulatePage();

            Transaction t = new Transaction
            {
                Amount = TransactionEntry.Type == TransactionEntry.TradeType.Buy ? (int)TransactionEntry.Amount : -(int)TransactionEntry.Amount,
                EquityId = TransactionEntry.EquityId,
                TransactionReasonId = TransactionEntry.TransactionReasonId,
                TeamMemberId = ActiveTeamMember.Id,
                TradingSessionId = ActiveTradingSession.Id
            };

            Context.Transactions.Add(t);
            await Context.SaveChangesAsync();

            return RedirectToPage("./Trade");
        }

        public async Task FetchPortfolio()
        {
            await FindActiveGameAndTeam();

            PortfolioGameHistory pgh = await PortfolioHistories(ActiveGame, Enumerable.Repeat(ActiveTeam, 1), ActiveEpisodeIndex);

            PortfolioTeamHistory pth = pgh.TeamHistories[0];

            Portfolio = pth.Items.LastOrDefault();

            //TODO
            //if (eei.Visible)
        }
        
    }
}