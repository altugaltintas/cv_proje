using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace cv_codeFirst_proje.Sınıflar
{
    public class Kişiler
    {

        [Key]
        public int KısıID { get; set; }
        [Column(TypeName = "varchar")]
        [StringLength(15)]
        public string AD { get; set; }

        [Column(TypeName ="varchar")]
        [StringLength(20)]
        public string soyadı { get; set; }
        [Column(TypeName = "varchar")]
        [StringLength(50)]
        public string mail { get; set; }
    }
}