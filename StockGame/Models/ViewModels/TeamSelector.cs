using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models.ViewModels
{
    public class TeamSelector
    {
        [Display(Name="École")]
        public int SchoolId { get; set; }
        [Display(Name = "Groupe")]
        public int GroupId { get; set; }
        [Display(Name = "Équipe")]
        public int TeamId { get; set; }
        [Display(Name = "Nom de l'équipe à créer")]
        public string AutoCreateTeamName { get; set; }
        [Display(Name = "Mot de passe pour joindre")]
        public string JoinPassword { get; set; }

        //navigation properties
        public School School { get; set; }
        public Group Group { get; set; }
        public Team Team { get; set; }
    }
}
