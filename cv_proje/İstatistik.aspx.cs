using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cv_proje
{
    public partial class İstatistik : System.Web.UI.Page
    {

        DBCVENTITIYEntities2 db = new DBCVENTITIYEntities2();

        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = db.TBLyetenek.Count().ToString();
            Label2.Text = db.TBLiletişim.Count().ToString();
            Label3.Text = db.TBLyetenek.Average(a => a.derece).ToString();

            var yüksekDerece = db.TBLyetenek.Max(a=> a.derece);
            var yüksekdereceyetenek = db.TBLyetenek.Where(a => a.derece == yüksekDerece).FirstOrDefault();            
            string yetenek = yüksekdereceyetenek.yetenek;
            int? derece = yüksekdereceyetenek.derece;

            Label4.Text = yetenek+" "+derece;
        }
    }
}