<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="tahsinsoyakblog.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="giris">
    <div id="girisformu" class="container center">
        <div class="row">
            <div class="col-lg-4">
                
            </div>
            <div class="col-lg-4 center">
                                <h1 class="display-4">GİRİŞ</h1>
                <table class="table-striped table-hover table-dark center">
                    <tr>
                        <td>
                            <label for="exampleInputEmail1">Eposta : </label>
                            <asp:TextBox ID="txtEposta" runat="server" Width="240px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Lütfen Eposta Giriniz*" ForeColor="#CC0000" ControlToValidate="txtEposta"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="exampleInputEmail1">Şifre : </label>
                            <asp:TextBox ID="txtSifre" runat="server" Width="240" TextMode="Password" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSifre" ErrorMessage="*Lütfen Şifre Giriniz*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <small id="emailHelp" class="form-text text-muted">Eğer üye değilseniz lütfen kayıt olun.<a href="Register.aspx" class="text-decoration-none">Kayıt Ol</a></small>
                            <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Giriş Yap" OnClick="Button1_Click" />
                            <br />
                            <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="col-lg-4">
                
            </div>
        </div>
    </div>
    </div>
    <style>
        .col-lg-4{
            font-weight:bold;
        }
        body{
            background-image:url(/img/img-login/back.jpg);
        }
    </style>
</asp:Content>
