using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models.ViewModels
{
    public class PortfolioGameHistory
    {
        [JsonIgnore]
        public Game Game { get; set; }

        public IEnumerable<string> EpisodeNames
        {
            get
            {
                return TeamHistories.Count > 0 
                           ? TeamHistories[0].Items.Select(phi => phi.Episode.Name) 
                           : Enumerable.Empty<string>();
            }
        }

        public List<PortfolioTeamHistory> TeamHistories { get; set; } = new List<PortfolioTeamHistory>();
    }
}
