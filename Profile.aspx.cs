using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tahsinsoyakblog.Classes;

namespace tahsinsoyakblog
{
    public partial class Profile : System.Web.UI.Page
    {
        MemberDbContext dBContext = new MemberDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Visible = false;
            Label1.Visible = false;
            Label8.Visible = false;
            //girişi engelliyoruz üyeliksiz
            if (Session["profil"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (Session["hosgeldin"] != null)
            {
                Label1.Visible = true;
                Label1.Text = "Hoşgeldin " + Session["hosgeldin"].ToString();
            }
            if(Session["admin"]!=null)
            {
                Button1.Visible = true;
            }
            Goster();

        }
        #region Butonlar
        protected void btnEkle_Click(object sender, EventArgs e)
        {
            try
            {
                Ekleme();
                Goster();
            }
            catch (Exception ex)
            {
                Label8.Visible = true;
                Label8.Text = ex.Message;
            }
        }
        protected void btnnewlang_Click(object sender, EventArgs e)
        {
            try
            {
                Guncelleme();
                Goster();
            }
            catch (Exception ex)
            {

                Label8.Visible = true;
                Label8.Text = ex.Message;
            }
        }
        protected void btnsil_Click(object sender, EventArgs e)
        {
            try
            {

                Silme();
            }
            catch (Exception ex)
            {

                Label8.Visible = true;
                Label8.Text = ex.Message;
            }
        }

        protected void btncikis_Click(object sender, EventArgs e)
        {
            try
            {
                CikisYap();
            }
            catch (Exception ex)
            {

                Label8.Visible = true;
                Label8.Text = ex.Message;
            }
        }
        #endregion
        #region Fonksiyonlar
        private void CikisYap()
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }
        private void Goster()
        {
            //üyemize göre bilgileri gösterme
            int a = Convert.ToInt32(Session["profil"].ToString());
            GridView1.DataSource = dBContext.Files.Where(x => x.MemberID == a).ToList();
            GridView1.DataBind();
            Label8.Visible = false;
        }
        private void Ekleme()
        {
            string b;
            int a = Convert.ToInt32(Session["profil"].ToString());
            var model = new File
            {
                CodeLang = txtCodeLang.Text,
                MemberID = a
            };

            dBContext.Files.Add(model);
            dBContext.SaveChanges();
        }
        private void Silme()
        {
            int id = Convert.ToInt32(Label6.Text);
            var model = dBContext.Files.FirstOrDefault(x => x.FileID == id);
            dBContext.Files.Remove(model);
            dBContext.SaveChanges();
            Goster();
        }
        private void Guncelleme()
        {
            int id = Convert.ToInt32(Label4.Text);
            var model = dBContext.Files.FirstOrDefault(x => x.FileID == id);
            if (model !=null)
            {
                int a = Convert.ToInt32(Session["profil"].ToString());
                model.FileID = id;
                model.CodeLang = txtnewlang.Text;
                model.MemberID = a;
                dBContext.SaveChanges();
            }

        }
        #endregion

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label6.Text=GridView1.SelectedRow.Cells[1].Text;
            Label4.Text = GridView1.SelectedRow.Cells[1].Text;
        }
        #region Database Trigger,Function,Procedure
        private void MailControlFunction()
        {
            string qurey = @"Create FUNCTION MailControl
                                        (
                                            @email VARCHAR(50)
                                        )
                                        RETURNS BIT
                                        AS
                                        BEGIN
                                            DECLARE @IsValidEmail BIT = 0;
                                            IF (
                                                   @email NOT LIKE '%[^a-z,0-9,@,.,!,#,$,%%,&,'',*,+,--,/,=,?,^,,`,{,|,},~]%'
                                                   AND @email LIKE '%@%.[a-z,0-9][a-z]%'
                                                   AND @email NOT LIKE '%@%@%'
                                                   AND @email NOT LIKE '%..%'
                                                   AND @email NOT LIKE '.%'
                                                   AND @email NOT LIKE '%.'
                                                   AND CHARINDEX('@', @email) <= 50
                                               )
	                                        BEGIN
                                            SET @IsValidEmail = 1;
                                           END;
                                            RETURN @IsValidEmail;
                                        END;";
            dBContext.Database.ExecuteSqlCommand(qurey);
            dBContext.SaveChanges();
        }
        private void NameControlFunction()
        {
            string qurey = @"CREATE FUNCTION isimuzunluk(@name nvarchar(255))  
                            RETURNS INT  
	                            AS  
		                            BEGIN  
		                            DECLARE @uzun int
		                            set @uzun=LEN(@name)
	                            if(@uzun<10)
		                            begin
		                            set @uzun=0
	                            end
	                            else if(@uzun>55)
		                            begin
		                            set @uzun=0
	                            end
	                            else
		                            begin
		                            set @uzun=1
	                            end
                            RETURN @uzun  
                            END";
            dBContext.Database.ExecuteSqlCommand(qurey);
            dBContext.SaveChanges();
        }
        private void TriggerOlustur()
        {
            string qurey = @"create trigger tr_Insert_Members on Members for insert
                            as
	                            begin
		                            declare @mail nvarchar (50)
		                            select @mail=Email from inserted
	                            if (tahsinso_tahsinsoyak.MailControl(@mail)=0)
	                            begin
	                            rollback
	                            end
                            end";
            dBContext.Database.ExecuteSqlCommand(qurey);
            dBContext.SaveChanges();
        }
        private void TriggerOlustur2()
        {
            string qurey = @"create trigger tr_Delete_Member on Members for delete
                            as
	                            begin
	                            rollback
                            end";
            dBContext.Database.ExecuteSqlCommand(qurey);
            dBContext.SaveChanges();
        }
        private void TriggerOlustur3()
        {
            string qurey = @"create trigger tr_Insert_Files on Files for insert
                            as
	                            begin
		                            declare @filelanguage nvarchar (50)
		                            declare  @id int
		                            select @id=MemberID from inserted
		                            declare @sayi int
		                            select @sayi=COUNT(*) from Files where MemberID=@id
	                            if(@sayi > 10)
	                            begin
		                            rollback
	                            end
                            end
                            ";
            dBContext.Database.ExecuteSqlCommand(qurey);
            dBContext.SaveChanges();
        }
        private void TriggerOlustur4()
        {
            string qurey = @"create trigger tr_Insert2_Members on Members for insert
                            as
	                            begin
		                            declare @sifre nvarchar (50)
		                            declare @id int
		                            select @sifre=Password from inserted
		                            select @id=MemberID from inserted
		                            select @sifre=LEN(Password) from Members where MemberID=@id
	                            if(@sifre < 10)
	                            begin
		                            rollback
	                            end
                            end
                            ";
            dBContext.Database.ExecuteSqlCommand(qurey);
            dBContext.SaveChanges();
        }
        private void TriggerOlustur5()
        {
            string qurey = @"CREATE trigger tr_Insert3_Members on Members for insert
                                as
	                                begin
		                                declare @name nvarchar (50)
		                                declare @id int
		                                select @name=Name from inserted
		                                select @id=MemberID from inserted
	                                if (tahsinso_tahsinsoyak.isimuzunluk(@name)=0)
	                                begin
	                                rollback
	                                end
                                end";
            dBContext.Database.ExecuteSqlCommand(qurey);
            dBContext.SaveChanges();
        }
        private void ProcedureOlustur1()
        {
            string qurey = @"Create procedure KulVeriSayisiGetir
                            @id int
                            as
                            begin
                            select Count(CodeLang) from Files where MemberID=@id
                            end
                            ";
            dBContext.Database.ExecuteSqlCommand(qurey);
            dBContext.SaveChanges();
        }
        private void ProcedureOlustur2()
        {
            string qurey = @"Create procedure KulDilGetir
                            @id int
                            as
                            begin
                            select CodeLang from Files where MemberID=@id
                            end
                            ";
            dBContext.Database.ExecuteSqlCommand(qurey);
            dBContext.SaveChanges();
        }
        private void ProcedureOlustur3()
        {
            string qurey = @"Create procedure Sifreogren
                            @id int
                            as
                            begin
                            select Password from Members where MemberID=@id
                            end
                            ";
            dBContext.Database.ExecuteSqlCommand(qurey);
            dBContext.SaveChanges();
        }
        #endregion
        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                MailControlFunction();
                NameControlFunction();
                TriggerOlustur();
                TriggerOlustur2();
                TriggerOlustur3();
                TriggerOlustur4();
                TriggerOlustur5();
                ProcedureOlustur1();
                ProcedureOlustur2();
                ProcedureOlustur3();
                Button1.Visible = false;
            }
            catch (Exception ex)
            {
                Label8.Text = ex.Message;
            }

        }
        private void ProcedureKVSayisi()
        {
            int a = Convert.ToInt32(Session["profil"]);
            MemberDbContext ctx = new MemberDbContext();
            var veri = ctx.Database.SqlQuery<int>("KulVeriSayisiGetir @id ", new SqlParameter("@id", a)).ToList();
            foreach (var item in veri)
            {
                Label7.Text += item.ToString();
            }    

        }
        private void ProcedureBilDil()
        {
            int a =Convert.ToInt32(Session["profil"]);
            MemberDbContext ctx = new MemberDbContext();
            var veri = ctx.Database.SqlQuery<string>("KulDilGetir @id ", new SqlParameter("@id", a)).ToList();
            foreach (var item in veri)
            {
                Label10.Text += item.ToString()+Environment.NewLine;
            }

        }
        private void ProcedureSifreGetir()
        {
            int a = Convert.ToInt32(Session["profil"]);
            MemberDbContext ctx = new MemberDbContext();
            var veri = ctx.Database.SqlQuery<string>("Sifreogren @id ", new SqlParameter("@id", a)).ToList();
            foreach (var item in veri)
            {
                Label11.Text += item.ToString();
            }

        }
        #region butonlar
        protected void Button2_Click(object sender, EventArgs e)
        {
            ProcedureKVSayisi();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ProcedureBilDil();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ProcedureSifreGetir();
        }
        #endregion
    }
}