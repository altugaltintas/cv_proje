using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cv_proje
{
    public partial class Yeteneksil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBCVENTITIYEntities2 db = new DBCVENTITIYEntities2();

            int x = Convert.ToInt32(Request.QueryString["ıd"]);
            
            var ytnk=db.TBLyetenek.Find(x);

            db.TBLyetenek.Remove(ytnk);
            db.SaveChanges();
            Response.Redirect("yeteneklerim.aspx");
        }
    }
}