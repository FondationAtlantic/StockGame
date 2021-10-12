using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models
{
    public class School
    {
        public int Id { get; set; }
        public string Name { get; set; }

        //Navigation properties
        public ICollection<Group> Groups { get; set; }
    }
}
