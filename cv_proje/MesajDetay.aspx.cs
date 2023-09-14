using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cv_proje
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DBCVENTITIYEntities2 db = new DBCVENTITIYEntities2();
            int x = int.Parse(Request.QueryString["ıd"]);

            var mesaj = db.TBLiletişim.Find(x);

            txtadsoyad.Text = mesaj.adsoyad;
            txtkonu.Text = mesaj.konu;
            txtmail.Text = mesaj.mail;
            txtmesaj.Text = mesaj.mesaj;

        }
    }
}