using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models
{
    public class EpisodeEquityInfo
    {
        public int Id { get; set; }
        //UniqueKey [EquityId, EpisodeId]
        public int EquityId { get; set; }
        public int EpisodeId { get; set; }
        public int CategoryId { get; set; }
        public bool Visible { get; set; } = true;
        public bool AllowTransactions { get; set; } = true;

        [Display(Name = "Prix"), DataType(DataType.Currency)]
        public decimal Price { get; set; }
        [Display(Name = "Prochain Dividende"), DataType(DataType.Currency)]
        public float? Dividend { get; set; }
        [Display(Name = "Actions en circulation")]
        public int OutstandingShares { get; set; } = 0;

        public bool AnnounceFinancialResults { get; set; }
        [Display(Name = "Bénéfice par action"), DataType(DataType.Currency)]
        public float? EarningPerShare { get; set; }

        //balance sheet
        [Display(Name = "Encaisse"), DataType(DataType.Currency)]
        public float? Cash { get; set; }
        [Display(Name = "Actifs à court terme"), DataType(DataType.Currency)]
        public float? ShortTermAssets { get; set; }
        [Display(Name = "Prêts"), DataType(DataType.Currency)]
        public float? Loans { get; set; }
        [Display(Name = "Autres actifs"), DataType(DataType.Currency)]
        public float? OtherAssets { get; set; }
        [Display(Name = "Actifs à long terme"), DataType(DataType.Currency)]
        public float? LongTermAssets { get; set; }
        [Display(Name = "Passifs à court terme"), DataType(DataType.Currency)]
        public float? ShortTermLiabilities { get; set; }
        [Display(Name = "Dette à long terme"), DataType(DataType.Currency)]
        public float? LongTermDebt{ get; set; }

        //income statement
        [Display(Name = "Ventes"), DataType(DataType.Currency)]
        public float? Sales { get; set; }
        [Display(Name = "Revenus nets d'intérêt"), DataType(DataType.Currency)]
        public float? InterestIncome { get; set; }
        [Display(Name = "Autres revenus"), DataType(DataType.Currency)]
        public float? OtherIncome { get; set; }
        [Display(Name = "Coût des marchandises vendues"), DataType(DataType.Currency)]
        public float? CostOfGoodsSold { get; set; }
        [Display(Name = "Dépense de recherche et développement"), DataType(DataType.Currency)]
        public float? ResearchDevelopmentExpense { get; set; }
        [Display(Name = "Dépense d'intérêts"), DataType(DataType.Currency)]
        public float? InterestExpense { get; set; }
        [Display(Name = "Frais de ventes et dépenses administratives"), DataType(DataType.Currency)]
        public float? SellingGeneralAdministrativeExpense { get; set; }
        [Display(Name = "Salaires"), DataType(DataType.Currency)]
        public float? Salaries { get; set; }

        public string NewsTitle { get; set; }
        [DataType(DataType.MultilineText)]
        public string NewsDetail { get; set; }
        [DataType(DataType.ImageUrl)]
        public string NewsImgPath { get; set; }

        //Navigation properties
        public Equity Equity { get; set; }
        public Episode Episode { get; set; }
        [Display(Name = "Catégorie")]
        public Category Category { get; set; }

        //Derived properties
        [Display(Name = "Actifs Totaux"), DataType(DataType.Currency)]
        public float TotalAssets { get { return Cash.GetValueOrDefault() + ShortTermAssets.GetValueOrDefault() + Loans.GetValueOrDefault() + OtherAssets.GetValueOrDefault(); } }
        [Display(Name = "Passifs Totaux"), DataType(DataType.Currency)]
        public float TotalLiabilities { get { return ShortTermLiabilities.GetValueOrDefault() + LongTermDebt.GetValueOrDefault(); } }
        [Display(Name = "Avoir des Actionnaires"), DataType(DataType.Currency)]
        public float TotalEquity { get { return TotalAssets - TotalLiabilities; } }
        [Display(Name = "Total du passif et de l'avoir des actionnaires"), DataType(DataType.Currency)]
        public float TotalLiabilitiesAndEquity { get { return TotalAssets; } }

        [Display(Name = "Revenus"), DataType(DataType.Currency)]
        public float TotalRevenue
        {
            get
            {
                return Sales.GetValueOrDefault()
                       + InterestIncome.GetValueOrDefault()
                       + OtherIncome.GetValueOrDefault();
            }
        }
        [Display(Name = "Dépenses"), DataType(DataType.Currency)]
        public float TotalExpenses
        {
            get
            {
                return CostOfGoodsSold.GetValueOrDefault()
                       + ResearchDevelopmentExpense.GetValueOrDefault()
                       + InterestExpense.GetValueOrDefault()
                       + SellingGeneralAdministrativeExpense.GetValueOrDefault()
                       + Salaries.GetValueOrDefault();
            }
        }
        [Display(Name = "Bénéfice Net"), DataType(DataType.Currency)]
        public float NetIncome { get { return TotalRevenue - TotalExpenses; } }
    }
}
