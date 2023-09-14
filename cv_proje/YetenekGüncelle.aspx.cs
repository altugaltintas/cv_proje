using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cv_proje
{
    public partial class YetenekGüncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DBCVENTITIYEntities2 db = new DBCVENTITIYEntities2();

            int id = int.Parse(Request.QueryString["ıd"]);
            if (Page.IsPostBack == false)
            {
                var ytnk = db.TBLyetenek.Find(id);

                TextBox1.Text = ytnk.yetenek;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DBCVENTITIYEntities2 db = new DBCVENTITIYEntities2();

            int id = int.Parse(Request.QueryString["ıd"]);
            var ytnk = db.TBLyetenek.Find(id);

            ytnk.yetenek = TextBox1.Text;
            db.SaveChanges();
            Response.Redirect("Yeteneklerim.aspx");

        }
    }
}