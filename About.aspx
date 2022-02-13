<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="tahsinsoyakblog.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-md-11">
        <div class="row">
            <div>
                    <%-- breadcrump kısmı --%>
             <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="Default.aspx">Anasayfa</a></li>
                <li class="breadcrumb-item active" aria-current="page">Hakkımda</li>
              </ol>
            </nav>
                    <%-- container kısmı --%>
                <div class="container col-md-12 center">
                <div class="jumbotron jumbotron-fluid">
                <div class="container">
                <h1 class="display-4">Tahsin Soyak</h1>
                <p class="lead"><br />
                Sakin ve buğulu bir sesle merhaba!.
                19 Yaşındayım ve Bilgisayar Mühendisliği Okuyorum.
                Kendimce yaşıyorum bu hayatı ve öğrendiklerimi de dilim döndükçe buraya yazıyorum.
                Blog sayfamda şiirlerimin yanı sıra,
                öğrendiğim farklı kodlama dilleri,teknikleri ve ipuçlarından bahsedeceğim.
                Eğer kodlamaya başlamayı düşüyorsanız,Özel ders verebilir size kodlamanın temellerini öğretebilirim.<br />
                Şimdilik C#,Java,Python ve Ruby dersleri verebilirim.Satın almak veya göz atmak isterseniz birkaç vidyomu izleyebilirsiniz.
                    
                </p>
               </div>
                </div>
                </div>
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="img/img-about/c1.jpg" class="d-block w-100" alt="c1">
                    </div>
                    <div class="carousel-item">
                      <img src="img/img-about/c2.jpg" class="d-block w-100" alt="c2">
                    </div>
                    <div class="carousel-item">
                      <img src="img/img-about/c3.jpg" class="d-block w-100" alt="c3">
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
            <br />
            <br />
                    <div class="container center">
                    <div class="row">
                        <div class="col-lg-3">
                            <a href="https://youtu.be/3v0-jPKauZ4"><img class="img-default" src="img/img-about/ruby.png" alt="sec" width="75" height="75"/></a>
                            <h2>Ruby</h2>
                            <p>Ruby'de Veri tabanı üzerinde CRUD işlemleri.İzlemek için resime tıklayın.</p>
                        </div>
                        <div class="col-lg-3">
                            <a href="https://youtu.be/Il5Ts0ZT2sg"><img class="img-default" src="img/img-about/python.png" alt="pak" width="75" height="75"/></a>
                            <h2>Python</h2>
                            <p>Python'da Veri tabanı üzerinde CRUD işlemleri.İzlemek için resime tıklayın.</p>
                        </div>
                        <div class="col-lg-3">
                            <a href="https://youtu.be/QTwl3zq-q7E"><img class="img-default" src="img/img-about/java.png" alt="car" width="75" height="75"/></a>
                            <h2>Java</h2>
                            <p>Java'da Veri tabanı üzerinde CRUD işlemleri.İzlemek için resime tıklayın.</p>
                        </div>
                             <div class="col-lg-3">
                            <a href="https://youtu.be/Sf6e4DBz5ek"><img class="img-default" src="img/img-about/c.png" alt="info" width="75" height="75"/></a>
                            <h2>C#</h2>
                            <p>C#'da Veri tabanı üzerinde CRUD işlemleri.İzlemek için resime tıklayın.</p>
                        </div>
                    </div>
                  </div>
            </div>
        </div>
    </div>
</asp:Content>
