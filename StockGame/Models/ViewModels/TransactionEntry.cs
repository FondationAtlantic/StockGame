using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models.ViewModels
{
    public class TransactionEntry
    {
        public enum TradeType
        {
            //[Display(Name = "Achat")]
            Achat,
            //[Display(Name = "Vente")]
            Vente
        };

        public int TradingSessionId { get; set; }
        public int EquityId { get; set; }
        public TradeType Type { get; set; }
        [Display(Name = "Quantité")]
        public uint Amount { get; set; }
        public int TransactionReasonId { get; set; }

        //Navigation properties
        public TeamMember TeamMember { get; set; }
        public TradingSession TradingSession { get; set; }
        public Equity Equity { get; set; }
        [Display(Name = "Raison")]
        public TransactionReason Reason { get; set; }
    }
}
