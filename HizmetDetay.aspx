<%@ Page Title="" Language="C#" MasterPageFile="~/icerikler.master" AutoEventWireup="true" CodeFile="HizmetDetay.aspx.cs" Inherits="KiralamaHizmetleriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <section class="page-heading">
        <div class="container">
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>

                    <h2><%#Eval("HizmetAdi") %></h2>

                </ItemTemplate>
            </asp:Repeater>

        </div>
    </section>

                        <%--   ESKİ SAYFA FORMATI         --%>

    <%--    <div class="page-content">
        <div class="container">
            <div class="grid-container" itemscope itemtype=" http://schema.org/Event">

                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>


                        <div class="grid-box-wrap ">
                            <div class="grid-img" itemprop="image">
                                <img src="<%#Eval("HizmetDetayResim") %>" alt="travel images">
                            </div>
                            <div class="grid-body">
                                <h4 itemprop="<%#Eval("Tarih") %>"></h4>
                                <h1 itemprop="name"><%#Eval("HizmetDetayYer") %></h1>



                            </div>
                        </div>


                    </ItemTemplate>
                </asp:Repeater>



            </div>
        </div>

    </div>--%>

                       <%--   YENİ SAYFA FORMATI         --%>


    <section class="course-listing-page">
        <div class="container">


            <div class="grid" id="cGrid">

                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="grid-item business" data-category="business">

                            <div class="img-wrap">
                                <img src="<%#Eval("HizmetDetayResim") %>" alt="courses picture">
                            </div>

                            <div class="box-body">
                                <h1><%#Eval("HizmetDetayYer") %></h1>
                                <br />
                                <section>
                                    <p><%#Eval("Tarih") %></p>

                                </section>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>




            </div>
        </div>
    </section>


</asp:Content>

