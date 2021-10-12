using Newtonsoft.Json;
using StockGame.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models
{
    public class Team
    {
        public int Id { get; set; }
        public int GroupId { get; set; }
        public string OwnerUserId { get; set; }
        [Display(Name = "Nom")]
        public string Name { get; set; }
        [Display(Name = "Accepter les nouveaux membres")]
        public bool AllowJoin { get; set; } = true;
        //TODO salt & hash
        [Display(Name = "Mot de passe pour joindre")]
        public string JoinPassword { get; set; }

        //Navigation properties
        [JsonIgnore, Display(Name = "Groupe")]
        public Group Group { get; set; }
        [JsonIgnore, Display(Name = "Chef d'équipe")]
        public ApplicationUser OwnerUser { get; set; }
        [JsonIgnore]
        public ICollection<TeamMember> TeamMembers { get; set; }
    }
}
