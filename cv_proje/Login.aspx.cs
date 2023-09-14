using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace cv_proje
{
    public partial class Login : System.Web.UI.Page
    {

        DBCVENTITIYEntities2 db = new DBCVENTITIYEntities2();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var sorgu = from x in db.TBLadmin where x.kullanıcıadı == TextBox1.Text && x.sifre == TextBox2.Text select x;

            if (sorgu.Any())
            {
                Response.Redirect("İletisim.aspx");
            }
            else
            {
                Response.Write("Kullanıcı adı veya şifre hatalı");

            }
        }
    }
}