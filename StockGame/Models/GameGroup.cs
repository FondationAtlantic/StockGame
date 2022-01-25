using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models
{
    public class GameGroup
    {
        public int Id { get; set; }
        //UniqueKey [GameId, GroupId]
        public int GameId { get; set; }
        public int GroupId { get; set; }

        //Navigation properties
        public Game Game { get; set; }
        public Group Group { get; set; }
    }
}
