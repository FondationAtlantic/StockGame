using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models
{
    public class Equity
    {
        public enum DividendFrequencies
        {
            Monthly,
            Trimestrial,
            Semestrial,
            Annual
        };
        public enum StatementPresentations
        {
            Identity,
            Thousands,
            Millions,
            Billions
        };

        public int Id { get; set; }
        public int IndustryId { get; set; }
        [Display(Name = "Société")]
        public string Name { get; set; }
        [Display(Name = "Logo"), DataType(DataType.ImageUrl)]
        public string ThumbPath { get; set; }
        [Display(Name = "Logo"), DataType(DataType.ImageUrl)]
        public string ImgPath { get; set; }

        public DividendFrequencies DividendFrequency { get; set; } = DividendFrequencies.Trimestrial;
        public StatementPresentations StatementPresentation { get; set; } = StatementPresentations.Thousands;

        //Navigation properties
        [Display(Name = "Industrie")]
        public Industry Industry { get; set; }
    }
}
