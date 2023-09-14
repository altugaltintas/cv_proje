using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cv_proje
{
    public partial class YeniYetenek : System.Web.UI.Page
    {

        DBCVENTITIYEntities2 db = new DBCVENTITIYEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            

            TBLyetenek t = new TBLyetenek();

            t.yetenek = TextBox1.Text;           
            string derecetext = TextBox2.Text;
            int dereceint=Convert.ToInt32(derecetext);
            t.derece = dereceint;
            db.TBLyetenek.Add(t);
            db.SaveChanges();
            Response.Redirect("Yeteneklerim.aspx");


        }
    }
}