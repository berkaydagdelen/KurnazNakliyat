<%@ Page Title="" Language="C#" MasterPageFile="~/icerikler.master" AutoEventWireup="true" CodeFile="Filo.aspx.cs" Inherits="HalilSite_edulab_Filo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="page-heading">
        <div class="container">
            <h2>FİLOMUZ</h2>
        </div>
    </section>
    <section class="upcomming events-section">
        <div class="container">

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>



                    <div class="event-wrap">
                        <div class="img-wrap">
                            <img src="<%#Eval("AracResim") %>" style="height: 550px; width: 600px;" alt="event images">
                        </div>
                        <div class="details" style="width:300px; ">
                          
                                <h3><%#Eval("AracAdi") %></h3>
                                <br />
                                                  
                            <br />  
                            <h5>Kasa Tipi(İçten İçe): &nbsp;  <%#Eval("KasaTipi") %> </h5>                            
                            <h5>UZUNLUK(İçten İçe): &nbsp;    <%#Eval("Uzunluk") %> METRE</h5>                            
                            <h5>GENİŞLİK(İçten İçe): &nbsp;  <%#Eval("Genislik") %> METRE</h5>
                            <h5>YÜKSEKLİK(İçten İçe): &nbsp;  <%#Eval("Yukseklik") %> METRE</h5>
                        </div>
                    </div>



                </ItemTemplate>
            </asp:Repeater>

        </div>
    </section>

   
</asp:Content>

