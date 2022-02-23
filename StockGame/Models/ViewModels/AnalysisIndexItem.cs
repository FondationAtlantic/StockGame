using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models.ViewModels
{
  public class AnalysisIndexItem : AnalysisItem
  {
    public enum PriceTrend
    {
      Up,
      Down,
      Unchanged
    };

    public PriceTrend Trend { get; set; }
    
    [DisplayFormat(DataFormatString = "{0:0.00} %")]
    public decimal PriceVariationRatio { get; set; }
    
    [Display(Name = "Profits / pertes"), DataType(DataType.Currency)]
    public decimal UserProfitLoss { get; set; }
  }
}
