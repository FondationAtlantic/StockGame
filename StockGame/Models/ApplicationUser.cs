using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;

namespace StockGame.Models
{
    // Add profile data for application users by adding properties to the ApplicationUser class
    public class ApplicationUser : IdentityUser
    {
        public string FirstMidName { get; set; }
        public string LastName { get; set; }
        public string FullName { get { return String.IsNullOrEmpty(FirstMidName) && String.IsNullOrEmpty(LastName) ? UserName : FirstMidName + " " + LastName; } }
        public int? ActiveGameId { get; set; }
        public int? ActiveTeamMemberId { get; set; }
        public int? OverrideActiveEpisodeIndex { get; set; }

        //Navigation properties
        public Game ActiveGame { get; set; }
        public TeamMember ActiveTeamMember { get; set; }
        public ICollection<Group> TeachedGroups { get; set; } // from which this user is the Teacher
        public ICollection<Team> OwnedTeams { get; set; } // from which this user is the Owner
    }
}
