using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tahsinsoyakblog.Classes;

namespace tahsinsoyakblog
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //bilgisayarda deneme yapmak için yazdık
            //VeriTabaniOlustur();
        }
        private void VeriTabaniOlustur()
        {
            MemberDbContext Veri = new MemberDbContext();
            Veri.Database.CreateIfNotExists();
        }
    }
}