<%@ Page Title="" Language="C#" MasterPageFile="~/icerikler.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <style>
        .whyus-wrap h1::after {
            position: absolute;
            content: "";
            bottom: 0;
            width: 25%;
            left: 0;
            height: 3px;
            /*background: #fff;*/
            border: 1px solid #fff;
        }

        .what-other-say .container .head::after {
            position: absolute;
            content: '';
            border: 2.5px solid #323e54;
            width: 90px;
            left: 46%;
            bottom: 0;
        }
    </style>


    <div id="page" class="site" itemscope itemtype="http://schema.org/LocalBusiness">

        <!-- Header Close -->
        <div class="banner">
            <div class="owl-four owl-carousel " itemprop="image">

                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>

                        <img  src="<%#Eval("SliderResim") %>" alt="Image of Bannner">
                    </ItemTemplate>
                </asp:Repeater>


            </div>
            <div style="color: #000000" class="container" itemprop="description">
                <h1>Kurnaz Nakliyat</h1>
                <h3>Kesintisiz Memnuniyet ve Kaliteli Hizmet için Doğru Adres</h3>
                <h3>Kongre&Fuar&Ses ve Işık Taşımacılığı</h3>
            </div>
            <div id="owl-four-nav" class="owl-nav"></div>
        </div>



        <!-- Banner Close -->
        <div class="page-heading">
            <div class="container">
                <h2>TAŞIMACILIK HİZMETLERİ</h2>
            </div>
        </div>
        <!-- Popular courses End -->
        <div class="learn-courses">
            <div class="container">
                <div class="courses">
                    <div class="owl-one owl-carousel">

                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>



                                <div class="box-wrap" itemprop="event" itemscope itemtype=" http://schema.org/Course">


                                    <div class="img-wrap" itemprop="image">

                                        <a href="Hizmetler.aspx?HizmetTuru=1">
                                            <img style="max-height: 500px" src="<%#Eval("HizmetResim") %>" alt="courses picture"></a>
                                    </div>
                                    <a href="Hizmetler.aspx?HizmetTuru=1" style="margin-top: 190px" class="learn-desining-banner" itemprop="name">-<%#Eval("HizmetAdi")%>-</a>


                                </div>

                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                </div>
            </div>
        </div>




        <!-- Banner Close -->
        <div class="page-heading">
            <div class="container">
                <h2>KİRALAMA HİZMETLERİ</h2>
            </div>
        </div>
        <!-- Popular courses End -->
        <div class="learn-courses">
            <div class="container">
                <div class="courses">
                    <div class="owl-one owl-carousel">

                        <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>



                                <div class="box-wrap" itemprop="event" itemscope itemtype=" http://schema.org/Course">


                                    <div class="img-wrap" itemprop="image">

                                        <a href="Hizmetler.aspx?HizmetTuru=2">
                                            <img style="max-height: 500px" src="<%#Eval("HizmetResim") %>" alt="courses picture"></a>
                                    </div>
                                    <a href="Hizmetler.aspx?HizmetTuru=2" style="margin-top: 190px" class="learn-desining-banner" itemprop="name">-<%#Eval("HizmetAdi")%>-</a>


                                </div>

                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />


        <!-- Learn courses End -->
        <section class="whyUs-section">
            <div class="container">
                <div class="featured-points">
                    <ul>
                        <li><i class="fas fa-truck"></i>Hızlı Teslimat</li>
                        <li><i class="fas fa-clock"></i>Tam Zamanında</li>
                        <li><i class="fas fa-lock"></i>Güvenilir</li>
                        <li><i class="fas fa-laugh"></i>Güler Yüz</li>
                    </ul>
                </div>
                <asp:Repeater ID="Repeater4" runat="server">
                    <ItemTemplate>

                        <div class="whyus-wrap">
                            <h1>NEDEN BİZ? </h1>
                            <p itemprop="description"><%#Eval("NedenBiz") %></p>

                        </div>

                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>
        <!-- Closed WhyUs section -->
        <section class="page-heading">
            <div class="container">
                <h2>GALERİ</h2>
            </div>
        </section>
        <section class="gallery-images-section" itemprop="image" itemscope itemtype=" http://schema.org/ImageGallery">

            <asp:Repeater ID="Repeater6" runat="server">
                <ItemTemplate>


                    <div class="gallery-img-wrap" style="height:350px; width:350px; margin-left:10px;">
                        <a href="<%#Eval("HizmetDetayResim") %>" data-lightbox="example-set" data-title="<%#Eval("HizmetDetayYer") %>">
                    
                            <img src="<%#Eval("HizmetDetayResim") %>" alt="gallery-images">
                        </a>

                    </div>

                </ItemTemplate>
            </asp:Repeater>
        </section>




        <!-- End of gallery Images -->
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <!-- End of Events section -->
        <section class="what-other-say  ">

            <div class="container">

                <h2 class="head">MEMNUNİYET</h2>
                <div class="three owl-carousel owl-theme ">

                    <asp:Repeater ID="Repeater7" runat="server">
                        <ItemTemplate>


                            <div class="customer-item  " style="min-height: 460px" itemscope itemtype="http://schema.org/Rating">
                                <div class="border">
                                    <div class="customer">
                                        <figure>
                                            <img class="customer-img" style="height: 100px; width: 100px;" src="  <%#Eval("ReferansLogo") %>" alt="Person image">
                                            <figcaption>
                                                <span itemprop="author"><%#Eval("ReferansAdSoyad") %></span>
                                                <div class="rateYo" itemprop="ratingValue"></div>
                                            </figcaption>
                                        </figure>
                                    </div>
                                    <div class="customer-review">
                                        <p itemprop="description">

                                            <%#Eval("ReferansMemnuniyet") %>
                                        </p>
                                    </div>
                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:Repeater>


                </div>
            </div>
        </section>



        <section class="page-heading">
            <div class="container">
                <h2>Referanslarımız</h2>
            </div>
        </section>


        <div class="container">


            <section class="customer-logos slider">

                <asp:Repeater ID="Repeater5" runat="server">
                    <ItemTemplate>


                        <div class="slide img-responsive">
                            <img style="max-width: 125px; max-height: 125px;" src="<%#Eval("ReferansLogo") %>">
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </section>

        </div>

        <br />
        <br />


        <!-- Latest News CLosed -->

        <!-- End of Query Section -->



    </div>




</asp:Content>

