using cv_codeFirst_proje.Sınıflar;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace cv_codeFirst_proje.Infrastructure
{
    public class Context
    {

        public DbSet<Kişiler> Kişilers { get; set; }
        public DbSet<Departman> Departmens { get; set; }
    }
}