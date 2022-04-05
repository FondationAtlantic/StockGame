using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models.ViewModels
{
    public class PortfolioItem
    {
        public int EpisodeEquityId { get; set; }
        public int EquityId { get; set; }
        [Display(Name = "Quantité")]
        public int Amount { get; set; }
        [Display(Name = "Prix"), DataType(DataType.Currency)]
        public float Price { get; set; }
        [Display(Name = "Valeur"), DataType(DataType.Currency)]
        public float Value { get { return Amount * Price; } }
        public string Name { get { return Equity.Name; } }
        public bool AllowTransactions { get; set; } = true;
        public int EpisodeId { get; set; }

        //Navigation properties
        [JsonIgnore]
        public Equity Equity { get; set; }
    }
}
