using Newtonsoft.Json;
using StockGame.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models
{
    public class Group
    {
        public int Id { get; set; }
        public int SchoolId { get; set; }
        public string TeacherUserId { get; set; }
        public string Name { get; set; }
        public bool AllowJoin { get; set; } = true;
        public bool AllowAutoCreateTeam { get; set; }
        //TODO salt & hash
        public string AutoCreateTeamPassword { get; set; }

        //Navigation properties
        [JsonIgnore]
        public School School { get; set; }
        [JsonIgnore]
        public ApplicationUser TeacherUser { get; set; }
        [JsonIgnore]
        public ICollection<Team> Teams { get; set; }
        [JsonIgnore]
        public ICollection<GameGroup> GameGroups { get; set; }
    }
}
