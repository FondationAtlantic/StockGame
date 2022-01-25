using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models
{
    public class Scenario
    {
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        [Range(0, 100)]
        public int HistoricalEpisodeCount { get; set; }
        [Range(1, 100)]
        public int PlayableEpisodeCount { get; set; }

        //Navigation properties
        public ICollection<Episode> Episodes { get; set; }
        public ICollection<ScenarioEquity> ScenarioEquities { get; set; }
    }
}
