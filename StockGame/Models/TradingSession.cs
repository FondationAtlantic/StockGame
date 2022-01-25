using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models
{
    public class TradingSession
    {
        public int Id { get; set; }
        //UniqueKey [GameId, EpisodeId]
        public int GameId { get; set; }
        public int EpisodeId { get; set; }
        public string Name { get; set; }
        public DateTime? StartTime { get; set; }

        //Navigation properties
        public Game Game { get; set; }
        public Episode Episode { get; set; }
        public ICollection<Transaction> Transactions { get; set; }
    }
}
