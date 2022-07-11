<%@ Page Title="" Language="C#" MasterPageFile="~/icerikler.master" AutoEventWireup="true" CodeFile="Hizmetler.aspx.cs" Inherits="Hizmetler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <section class="course-listing-page">
        <div class="container">


            <div class="grid" id="cGrid">

                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>

                        <div class="grid-item business" data-category="business">
                            <div class="img-wrap">
                                <a href="HizmetDetay.aspx?Hizmetid=<%#Eval("Hizmetid") %>">
                                    <img style="max-height: 500px" src="<%#Eval("HizmetResim") %>" alt="courses picture"></a>
                            </div>

                            <a href="HizmetDetay.aspx?Hizmetid=<%#Eval("Hizmetid") %>" style="margin-top: 190px" class="learn-desining-banner-course">-<%#Eval("HizmetAdi")%>-</></a>
                            <br />
                            <br />
                            <br />

                        </div>

                    </ItemTemplate>
                </asp:Repeater>



            </div>
        </div>
    </section>

</asp:Content>

