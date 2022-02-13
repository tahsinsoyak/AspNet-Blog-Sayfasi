using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tahsinsoyakblog.Classes;

namespace tahsinsoyakblog
{
    public partial class Register : System.Web.UI.Page
    {
        MemberDbContext dBContext = new MemberDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {                
                Ekle();
                Label1.Visible = true;
                Label1.Text = "Kayıt Başarıyla Oluşturdu.";
            }
            catch (Exception ex)
            {
                Label2.Visible = true;
                Label2.Text = "Sırasında Hata Oluştu."+ex.Message;
            }
        }
        private void Ekle()
        {
            var tbl = new Member
            {
                Email = txtEmail.Text,
                Name = txtAd.Text + " " + txtSoyad.Text,
                Password = txtSifre.Text
            };

            dBContext.Members.Add(tbl);
            dBContext.SaveChanges();
        }
    }
}