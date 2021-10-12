using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models
{
    public class Transaction
    {
        public int Id { get; set; }
        public int TeamMemberId { get; set; }
        public int TradingSessionId { get; set; }
        public int EquityId { get; set; }
        public int Amount { get; set; }
        public int TransactionReasonId { get; set; }

        //Navigation properties
        public TeamMember TeamMember { get; set; }
        public TradingSession TradingSession { get; set; }
        public Equity Equity { get; set; }
        public TransactionReason Reason { get; set; }
    }
}
