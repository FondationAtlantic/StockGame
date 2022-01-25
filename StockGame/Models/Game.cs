using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models
{
    public class EpisodeRange
    {
        public EpisodeRange()
        { }

        public EpisodeRange(int min, int max)
        {
            MinIndex = min;
            MaxIndex = max;
        }

        public bool Contains(int episodeIndex)
        {
            return MinIndex <= episodeIndex && episodeIndex <= MaxIndex;
        }

        public int MinIndex { get; set; } = -1;
        public int MaxIndex { get; set; } = -1;
    }

    public class Game
    {
        public int Id { get; set; }
        public int ScenarioId { get; set; }
        public string Name { get; set; }
        public int CurrentEpisodeIndex { get; set; } = 0;
        [DataType(DataType.Currency)]
        public float InitialCash { get; set; }
        public bool AllowJoin{ get; set; } = true;

        public EpisodeRange AllowJoinEpisodeRange { get; set; } = new EpisodeRange(0, 0);
        public EpisodeRange ShowPriceEarningsEpisodeRange { get; set; } = new EpisodeRange(-1, -1);
        public EpisodeRange ShowLeverageEpisodeRange { get; set; } = new EpisodeRange(-1, -1);

        //Navigation properties
        public Scenario Scenario { get; set; }
        public ICollection<GameGroup> GameGroups { get; set; }
        public ICollection<TradingSession> TradingSessions { get; set; }
        public ICollection<ApplicationUser> ActiveGameUsers { get; set; }
    }
}
