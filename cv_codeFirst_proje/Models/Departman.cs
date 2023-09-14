using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace cv_codeFirst_proje.Sınıflar
{
    public class Departman
    {
        [Key]
        public int ID { get; set; }
        [Column(TypeName = "varchar")]
        [StringLength(15)]
        public string ADI { get; set; }


        
    }
}