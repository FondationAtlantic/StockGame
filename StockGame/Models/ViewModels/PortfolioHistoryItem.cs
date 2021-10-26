using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models.ViewModels
{
    public class PortfolioHistoryItem
    {
        public float DividendsReceived { get; set; }
        [Display(Name = "Argent Disponible"), DataType(DataType.Currency)]
        public float Cash { get; set; }
        public float InvestmentsValue { get; set; }
        [Display(Name = "Valeur Totale"), DataType(DataType.Currency)]
        public float TotalValue { get { return Cash + InvestmentsValue; } }

        public List<PortfolioItem> Items { get; set; } = new List<PortfolioItem>();
        public string EpisodeName { get { return Episode.Name; } }

        [JsonIgnore]
        public Episode Episode { get; set; }
    }
}
