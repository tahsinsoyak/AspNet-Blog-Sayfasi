<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="tahsinsoyakblog.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="display-1 center"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>

    <div class="container center">
        <div class="row">
            <div class="center">
                <h1 class="display-5 center"><asp:Label ID="Label3" runat="server" Text="Bildiğiniz Diller Tablosu"></asp:Label></h1>
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="210px" Width="723px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" headertext="Kayıt Seçin" SelectText="Seç" />
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                <asp:Button CssClass="btn-lg btn-success" ID="Button1" runat="server" OnClick="Button1_Click" Text="Trigger,procedure,function Yarat" />
                     <asp:Label ID="Label8" runat="server" Text="Label" CssClass="alert-danger h4"></asp:Label>
            </div>
        </div>
    </div>
    <br />
    <br />
    <hr />
    <div class="container center">
        <div class="row">
            <div class="col-lg-3">
                <h5>Bildiğiniz dilleri eklemek için dil giriniz.</h5>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Dil İsmi : "></asp:Label>
                <asp:TextBox ID="txtCodeLang" runat="server"></asp:TextBox>
                <asp:Button class="btn btn-info" ID="btnEkle" runat="server" Text="Ekle" OnClick="btnEkle_Click"/>
            </div>
            <div class="col-lg-6 center">
                <h5>Bildiğiniz dilleri güncellemek için tablodan satır seçiniz.</h5>
                <br />
                <asp:Label ID="Label4" runat="server" Text="File ID"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Yeni Dil İsmi : "></asp:Label>
                <asp:TextBox ID="txtnewlang" runat="server"></asp:TextBox>
                <asp:Button class="btn btn-success" ID="btnnewlang" runat="server" Text="Güncelle" OnClick="btnnewlang_Click"/>
                <br />
                &nbsp;
                </div>
            <div class="col-lg-3">
                <h5>Bildiğiniz dilleri silmek için tablodan satır seçiniz.</h5>
                <asp:Label ID="Label6" runat="server" Text="File ID"></asp:Label>
                <asp:Button class="btn btn-danger" ID="btnsil" runat="server" Text="Sil" OnClick="btnsil_Click"/>
            </div>
        </div>
    </div>
    <br />
    <br />
    <hr />
        <div class="container center">
        <div class="row">
            <div class="col-lg-4">
                <h5>Veri Sayımı Getir</h5>
                <asp:Label ID="Label7" runat="server" Text="Veri Sayısı :  "></asp:Label>
                <br />
                <asp:Button class="btn btn-info" ID="Button2" runat="server" Text="Veri Sayısını Getir" OnClick="Button2_Click"/>
            </div>
            <div class="col-lg-4 center">
                <h5>Bildiğiniz Dilleri Kopyalamak İçin Getir Butonuna Basın!</h5>
                <br />
                <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
                <br />
                <asp:Button class="btn btn-success" ID="Button3" runat="server" Text="Getir" OnClick="Button3_Click" />
                <br />
                &nbsp;
                </div>
            <div class="col-lg-4">
                <h5>Şifrenizi Öğrenmek İçin Tıklayın!</h5>
                <asp:Label ID="Label11" runat="server" Text="Şifreniz : "></asp:Label><br />
                <asp:Button class="btn btn-danger" ID="Button4" runat="server" Text="Şifre Öğren" OnClick="Button4_Click" />
            </div>
        </div>
    </div>
    <br />
    <hr />
    <div class="container center">
        <div class="row">
            <div class="col-md-12">
                    <h1 class="display-4 sagla"><asp:Button class="btn btn-lg btn-warning" ID="btncikis" runat="server" Text="Çıkış Yap" OnClick="btncikis_Click"/></h1>
            </div>
        </div>
    </div>
</asp:Content>
