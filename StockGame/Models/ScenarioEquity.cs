using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models
{
    public class ScenarioEquity
    {
        public int Id { get; set; }
        //UniqueKey [ScenarioId, EquityId]
        public int ScenarioId { get; set; }
        public int EquityId { get; set; }

        //Navigation properties
        public Scenario Scenario { get; set; }
        public Equity Equity { get; set; }
    }
}
