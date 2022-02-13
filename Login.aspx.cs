using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tahsinsoyakblog.Classes;


namespace tahsinsoyakblog
{
    public partial class Login : System.Web.UI.Page
    {

        MemberDbContext dBContext = new MemberDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var model = dBContext.Members.FirstOrDefault(x => x.Email == txtEposta.Text && x.Password == txtSifre.Text);
                if (model!=null)
                {
                    Session["profil"] = model.MemberID;
                    Session["hosgeldin"] = model.Name;
                    if (txtEposta.Text == "tahsinsoyakk@gmail.com")
                    {
                        Session["admin"] = model.Email;
                    }
                    Response.Redirect("Profile.aspx");
                }
                else if(model==null)
                {
                    Label1.Visible = true;
                    Label1.Text = "Eposta adresi veya Şifre hatalı";
                }                            
        }
    }
}