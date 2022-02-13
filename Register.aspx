<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="tahsinsoyakblog.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 29%;
            height: 118px;
        }
        .auto-style2 {
            width: 218px;
        }
        .auto-style3 {
            width: 212px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container center">
        <div class="row">
            <div id="kaydolformu" class="col-md-12">
                <table align="center" class="center auto-style1 table-striped table-hover table-dark" style="width: 55%; height: 338px">
                    <tr>
                        <td class="auto-style2">İsim :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Lütfen Adınızı Giriniz!" ControlToValidate="txtAd" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Soyisim :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtSoyad" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Lütfen Soyadınızı Giriniz!" ControlToValidate="txtSoyad" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Email Adresi :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Lütfen Email Giriniz!" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Şifre :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Lütfen Şifre Giriniz!" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Şifre tekrar :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtSifreTekrar" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Lütfen Şifre Giriniz!" ControlToValidate="txtSifreTekrar" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Şifreniz uyumlu değil!" ControlToCompare="txtSifre" ControlToValidate="txtSifreTekrar" ForeColor="Red"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"><small id="emailHelp" class="form-text text-muted">Eğer üyeyseniz lütfen giriş yapın.<a href="Login.aspx" class="text-decoration-none">Giriş Yap</a></small>
                            <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Kayıt Ol" OnClick="Button1_Click" />
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="alert-success h4"></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text="Label" CssClass="alert-danger h4"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
