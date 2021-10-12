using StockGame.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models
{
    public class TeamMember
    {
        public int Id { get; set; }
        //UniqueKey [UserId, TeamId]
        public string UserId { get; set; }
        public int TeamId { get; set; }

        //Navigation properties
        [Required]
        public ApplicationUser User { get; set; }
        public Team Team { get; set; }
    }
}
