using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models.ViewModels
{
    public class StatementInfo
    {
        EpisodeEquityInfo _eei;
        float _multiplier;

        public StatementInfo(EpisodeEquityInfo eei)
        {
            _eei = eei;

            switch (_eei.Equity.StatementPresentation)
            {
                case Equity.StatementPresentations.Identity:
                    _multiplier = 1.0f;
                    break;
                case Equity.StatementPresentations.Thousands:
                    _multiplier = 1.0f / 1000.0f;
                    break;
                case Equity.StatementPresentations.Millions:
                    _multiplier = 1.0f / 1000000.0f;
                    break;
                case Equity.StatementPresentations.Billions:
                    _multiplier = 1.0f / 1000000000.0f;
                    break;
            }
        }

        public string PresentationBasis
        {
            get
            {
                switch (_eei.Equity.StatementPresentation)
                {
                    case Equity.StatementPresentations.Thousands:
                        return "(en milliers de dollars)";
                    case Equity.StatementPresentations.Millions:
                        return "(en millions de dollars)";
                    case Equity.StatementPresentations.Billions:
                        return "(en milliards dollars)";
                }

                return "(en dollars)";
            }
        }

        //balance sheet
        [Display(Name = "Encaisse"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int? Cash { get { return (int?)(_eei.Cash * _multiplier); } }
        [Display(Name = "Actifs à court terme"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int? ShortTermAssets { get { return (int?)(_eei.ShortTermAssets * _multiplier); } }
        [Display(Name = "Prêts"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int? Loans { get { return (int?)(_eei.Loans * _multiplier); } }
        [Display(Name = "Autres actifs"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int? OtherAssets { get { return (int?)(_eei.OtherAssets * _multiplier); } }
        [Display(Name = "Actifs à long terme"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int? LongTermAssets { get { return (int?)(_eei.LongTermAssets * _multiplier); } }
        [Display(Name = "Passifs à court terme"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int? ShortTermLiabilities { get { return (int?)(_eei.ShortTermLiabilities * _multiplier); } }
        [Display(Name = "Dette à long terme"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int? LongTermDebt { get { return (int?)(_eei.LongTermDebt * _multiplier); } }

        //income statement
        [Display(Name = "Ventes"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int? Sales { get { return (int?)(_eei.Sales * _multiplier); } }
        [Display(Name = "Revenus nets d'intérêt"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int? InterestIncome { get { return (int?)(_eei.InterestIncome * _multiplier); } }
        [Display(Name = "Autres revenus"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int? OtherIncome { get { return (int?)(_eei.OtherIncome * _multiplier); } }
        [Display(Name = "Coût des marchandises vendues"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int? CostOfGoodsSold { get { return (int?)(_eei.CostOfGoodsSold * _multiplier); } }
        [Display(Name = "Dépense de recherche et développement"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int? ResearchDevelopmentExpense { get { return (int?)(_eei.ResearchDevelopmentExpense * _multiplier); } }
        [Display(Name = "Dépense d'intérêts"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int? InterestExpense { get { return (int?)(_eei.InterestExpense * _multiplier); } }
        [Display(Name = "Frais de ventes et dépenses administratives"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int? SellingGeneralAdministrativeExpense { get { return (int?)(_eei.SellingGeneralAdministrativeExpense * _multiplier); } }
        [Display(Name = "Salaires"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int? Salaries { get { return (int?)(_eei.Salaries * _multiplier); } }



        //Derived properties
        [Display(Name = "Actifs Totaux"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int TotalAssets { get { return (int)(_eei.TotalAssets * _multiplier); } }
        [Display(Name = "Passifs Totaux"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int TotalLiabilities { get { return (int)(_eei.TotalLiabilities * _multiplier); } }
        [Display(Name = "Avoir des Actionnaires"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int TotalEquity { get { return (int)(_eei.TotalEquity * _multiplier); } }
        [Display(Name = "Total du passif et de l'avoir des actionnaires"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int TotalLiabilitiesAndEquity { get { return (int)(_eei.TotalLiabilitiesAndEquity * _multiplier); } }
        [Display(Name = "Revenus"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int TotalRevenue { get { return (int)(_eei.TotalRevenue * _multiplier); } }
        [Display(Name = "Dépenses"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int TotalExpenses { get { return (int)(_eei.TotalExpenses * _multiplier); } }
        [Display(Name = "Bénéfice Net"), DisplayFormat(DataFormatString = "{0:N0}")]
        public int NetIncome { get { return (int)(_eei.NetIncome * _multiplier); } }
    }
}
