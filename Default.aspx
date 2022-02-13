<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="tahsinsoyakblog.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="bolum1">
          <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                      <div class="carousel-inner">
                        <div class="carousel-item active">
                          <img src="img/img-default/background1.jpg" class="d-block w-100" alt="c1">
                        </div>
                        <div class="carousel-item">
                          <img src="img/img-default/background2.jpg" class="d-block w-100" alt="c2">
                        </div>
                        <div class="carousel-item">
                          <img src="img/img-default/background3.jpg" class="d-block w-100" alt="c3">
                        </div>
                      </div>
                      <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                      </a>
                      <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                      </a>
                        </div>

    </section>
    <section id="bolum4">    
         <div class="container center">
            <div class="row">
                    <div class="col-md-4">
                    <h2 class="display-4">Hakkımda</h2>
                      <a href="about.aspx" class="btn btn-warning btn-lg">Sayfaya Git</a>
                    </div>
                    <div class="col-md-4">
                     <h2 class="display-4">Çalışmalarım</h2>
                     <a href="mywork.aspx" class="btn btn-warning btn-lg">Sayfaya Git</a>
                     </div>
                    <div class="col-md-4">
                   <h2 class="display-4">Şiirlerim</h2>
                   <a href="poems.aspx" class="btn btn-warning btn-lg">Sayfaya Git</a>
                </div>
            </div>
        </div> 
    </section>
    <style>
        #bolum1{
            margin-bottom:10px;
            margin-top:10px;
            margin-right:12px;
            margin-left:12px;
            background-image:url(/img/img-default/background1.jpg);
        }
    </style>
</asp:Content>
