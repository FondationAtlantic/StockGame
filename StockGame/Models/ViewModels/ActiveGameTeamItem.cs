using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models.ViewModels
{
    public class ActiveGameTeamItem
    {
        [Display(Name = "Partie")]
        public Game Game { get; set; }
        [Display(Name = "Équipe")]
        public TeamMember TeamMember { get; set; }
        public bool Selected { get; set; } = false;
    }
}
