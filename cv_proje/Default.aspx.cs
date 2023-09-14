using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.WebSockets;

namespace cv_proje
{
    public partial class Default : System.Web.UI.Page
    {

        DBCVENTITIYEntities2 db = new DBCVENTITIYEntities2();

        protected System.Web.UI.HtmlControls.HtmlGenericControl LabelMessage;


        protected void Page_Load(object sender, EventArgs e)
        {

            Repeater1.DataSource = db.TBLhakkında.ToList();
            Repeater1.DataBind();

            Repeater2.DataSource = db.TBLhakkında.ToList();
            Repeater2.DataBind();

            Repeater3.DataSource = db.TBLhakkında.ToList();
            Repeater3.DataBind();

            Repeater4.DataSource = db.TBLyetenek.ToList();
            Repeater4.DataBind();
        }

        private void ShowSuccessMessage(string message)
        {
            LabelMessage.InnerHtml = message;
            LabelMessage.Attributes["class"] = "message success";
        }

        private void ShowErrorMessage(string message)
        {
            LabelMessage.InnerHtml = message;
            LabelMessage.Attributes["class"] = "message error";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                TBLiletişim t = new TBLiletişim();

                t.adsoyad = TextBox1.Text;
                t.mail = TextBox2.Text;
                t.konu = TextBox3.Text;
                t.mesaj = TextBox4.Text;

                db.TBLiletişim.Add(t);
                db.SaveChanges();
                ShowSuccessMessage("Mesajınız başarıyla eklendi.");
                
            }
            catch (Exception ex)
            {

                ShowErrorMessage("Bir hata oluştu: " + ex.Message);
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
              

           
        }
    }
}