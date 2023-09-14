using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cv_proje
{
    public partial class Hakkımda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBCVENTITIYEntities2 db = new DBCVENTITIYEntities2();


            Repeater1.DataSource = db.TBLyetenek.ToList();
            Repeater1.DataBind();
           
        }
    }
}