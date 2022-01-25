using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models
{
    public class Episode
    {
        public int Id { get; set; }
        //UniqueKey [ScenarioId, EpisodeIndex]
        public int ScenarioId { get; set; }
        [Display(Name="Index")]
        public int EpisodeIndex { get; set; }
        [Required]
        public string Name { get; set; }
        public bool AllowTransactions { get; set; }

        public string NewsTitle { get; set; }
        [DataType(DataType.MultilineText)]
        public string NewsDetail { get; set; }
        [DataType(DataType.ImageUrl)]
        public string NewsImgPath { get; set; }

        //Navigation properties
        public Scenario Scenario { get; set; }
        public ICollection<TradingSession> TradingSessions { get; set; }
    }
}
