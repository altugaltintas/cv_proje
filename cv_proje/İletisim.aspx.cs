using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cv_proje
{
    public partial class İletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBCVENTITIYEntities2 db = new DBCVENTITIYEntities2();


            var mesajlar = db.TBLiletişim.ToList();
            Repeater1.DataSource = mesajlar;
            Repeater1.DataBind();

        }
    }
}