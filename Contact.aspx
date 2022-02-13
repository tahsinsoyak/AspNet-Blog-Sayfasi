<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="tahsinsoyakblog.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <hr />
    <div class="container center">
        <div class="row">
            <div id="adres" class=" col-lg-12">
              <h3><img width="40" height="40"src="img/img-contact/mail.png" />E-posta</h3>
              <p>tahsinsoyakk@gmail.com</p>
            </div>
        </div>
        <div id="social2" class="col-lg-12">
               <button type="button" class="btn btn-outline-info">Sosyal Medya Hesaplarım</button><br /><br />
               <a href="https://www.youtube.com/channel/UCLX8V2ZV2VOdBp-GKxkvL1A"><img width="70" height="70" src="img/img-design/youtube.png" /></a>
               <a href="https://www.instagram.com/tahsinsoyak/"><img width="70" height="70"  src="img/img-design/instagram.png" /></a>
        </div>
    </div>
    <style>
        #site{
            background-image:url(/img/img-contact/back.jpg);
        }
    </style>
</asp:Content>
