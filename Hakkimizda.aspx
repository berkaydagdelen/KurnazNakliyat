<%@ Page Title="" Language="C#" MasterPageFile="~/icerikler.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="HalilSite_edulab_Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section class="about-upper-section" itemprop="mainContentofPage">
        <div class="container">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>



                    <article class="who-we-are">
                        <h2 class="top-heading">BİZ KİMİZ?</h2>
                        <p><%#Eval("Hakkimizda") %></p>

                        <p><%#Eval("HakkimizdaAltEk") %></p>
                    </article>

                </ItemTemplate>
            </asp:Repeater>


            <div class="our-story">
                <h2 class="top-heading">BİZİM HİKAYEMİZ</h2>
                <ul>
                    <li><i class="fas fa-truck"></i><a>Hızlı Teslimat</a></li>
                    <li><i class="fas fa-clock"></i><a>Tam Zamanında</a></li>
                    <li><i class="fas fa-lock"></i><a>Güvenilir</a></li>
                    <li><i class="fas fa-laugh"></i><a>Güler Yüz</a></li>


                </ul>
            </div>
        </div>
    </section>
    <br />
    <br />
    <br />
    <br />


</asp:Content>

