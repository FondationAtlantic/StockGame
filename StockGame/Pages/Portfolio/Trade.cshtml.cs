using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
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

        public PortfolioHistoryItem Portfolio { get; set; }
        public PortfolioTeamHistory PortfolioTeamHistory { get; set; }
        public PortfolioHistoryItem PreviousEpisodePortfolio { get; set; }
        public Dictionary<int, float> PriceDifference { get; set; }
        [DataType(DataType.Currency)]
        public float? ValueDifference => Portfolio.TotalValue - PreviousEpisodePortfolio.TotalValue;

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
            else if (TransactionEntry.Type == TransactionEntry.TradeType.Achat)
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
                Amount = TransactionEntry.Type == TransactionEntry.TradeType.Achat ? (int)TransactionEntry.Amount : -(int)TransactionEntry.Amount,
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

            PortfolioTeamHistory = pgh.TeamHistories[0];

            Portfolio = PortfolioTeamHistory.Items.LastOrDefault();

            
            if (PortfolioTeamHistory.Items.Count > 1)
            {
                PriceDifference = new Dictionary<int, float>();
                PreviousEpisodePortfolio = PortfolioTeamHistory.Items[^2];

                foreach ((PortfolioItem item, PortfolioItem i) in Portfolio.Items.SelectMany(item => PreviousEpisodePortfolio.Items.Where(i => item.Equity.Id == i.Equity.Id).Select(i => (item, i))))
                {
                    PriceDifference.Add(item.EquityId, item.Price - i.Price);
                }
            }
            
        }
    }
}
