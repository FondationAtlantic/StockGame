using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models.ViewModels
{
    public class PortfolioTeamHistory
    {
        [JsonIgnore]
        public Team Team { get; set; }

        public string TeamName { get { return Team.Name; } }

        public List<PortfolioHistoryItem> Items { get; set; } = new List<PortfolioHistoryItem>();
    }
}
