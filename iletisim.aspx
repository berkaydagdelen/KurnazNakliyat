<%@ Page Title="" Language="C#" MasterPageFile="~/icerikler.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <section class="contact-page-section">
        <div class="container">
            <div class="people-info-wrap">
                <h2 style="font-size:x-large; ">BİLGİLERİNİZİ BİZE BIRAKABİLİRSİNİZ</h2>
                
                <form runat="server" >
                    <span>
                        <asp:TextBox ID="TxtAdSoyad" placeholder="Ad Soyad*" class="input- subject" runat="server"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="TxtAdSoyad"
                            ErrorMessage="Ad Soyad Girmediniz."
                            ForeColor="Red" Font-Size="Small">
                              
                        </asp:RequiredFieldValidator>


                        <asp:TextBox ID="TxtMail" type="email" placeholder="Email*" class="input- subject" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="TxtMail"
                            ErrorMessage="Mail Adresi Girmediniz."
                            ForeColor="Red" Font-Size="Small">
                        </asp:RequiredFieldValidator>

                    </span>
                    <asp:TextBox ID="TxtKonu" type="text" placeholder="Konu*" class="input- subject" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="TxtKonu"
                        ErrorMessage="Konu Girmediniz."
                        ForeColor="Red" Font-Size="Small">
                    </asp:RequiredFieldValidator>

                    <asp:TextBox ID="TxtMesaj" class="input-" placeholder="Mesaj*" Height="200px" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Width="50px" runat="server"
                        ControlToValidate="TxtMesaj"
                        ErrorMessage="Mesaj Girmediniz."
                        ForeColor="Red" Font-Size="Small">
                    </asp:RequiredFieldValidator>



                    <asp:Button ID="Button1" runat="server" type="submit" Text="Gönder" OnClick="Button1_Click" />
                </form>
            </div>

            <div class="contact-info">
                <h2>İLETİŞİM BİLGİLERİ</h2>

                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>

                        <ul class="contact-list">
                            <li><i class="fas fa-location-arrow"></i>
                                <span>
                                    <font face="verdana">  <h3><%#Eval("Yer") %></h3></font>

                                </span>
                            </li>

                            <li><i class="fas fa-phone"></i>
                                <span>
                                    <font face="verdana">   <h3><%#Eval("AdminAdSoyad") %></h3></font>
                                    <font face="verdana">  <p>+90 <%#Eval("AdminTelNo") %></p> </font>

                                </span>
                            </li>
                    </ItemTemplate>
                </asp:Repeater>

                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <li><i class="fas fa-phone"></i>
                            <span>
                                <font face="verdana"> <h3><%#Eval("AdminAdSoyad") %></h3></font>
                                <font face="verdana">  <p>+90 <%#Eval("AdminTelNo") %></p></font>

                            </span>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>

                <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                        <li><i class="fas fa-envelope"></i>
                            <span>
                                <font face="verdana">     <h3><%#Eval("Mail") %></h3></font>
                            </span>
                        </li>
                        </ul>
                        <ul class="contact-social">


                            <li><a href="<%#Eval("Facebook") %>"><i class="fab fa-facebook-square"></i></a></li>
                            <li><a href="<%#Eval("Twitter") %>"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="<%#Eval("instagram") %>"><i class="fab fa-instagram"></i></a></li>
                            <li><a href="<%#Eval("Youtube") %>"><i class="fab fa-youtube"></i></a></li>



                        </ul>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
    </section>



</asp:Content>

