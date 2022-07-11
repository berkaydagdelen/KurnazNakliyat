<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminFiloListesi.aspx.cs" Inherits="AdminFilo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <!-- Site wrapper -->
    <div class="wrapper">
        <!-- Navbar -->

        <!-- /.navbar -->

        <!-- Main Sidebar Container -->


        <!-- Content Wrapper. Contains page content -->
        <div class="wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">

                    <div class="card card-primary" style="width: 150px">
                        <div class="card-header">
                            <h3 class="card-title " style="margin-left: 20px">Filo Listesi </h3>
                        </div>
                    </div>
                </div>

                <!-- /.container-fluid -->
            </section>

            <!-- Main content -->
            <section class="content">

                <!-- Default box -->
                <div class="card card-solid">
                    <div class="card-body">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>

                                <div class="row">
                                    <div class="col-12 col-sm-6">
                                        <br />



                                        <div class="col-12">
                                            <img src="<%#Eval("AracResim") %>" style="max-height: 550px; max-width: 450px;" class="product-image" alt="Product Image">
                                        </div>

                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <br />
                                        <p>Araç Adi: <%#Eval("AracAdi") %> </p>
                                        <p>Kasa Tipi: <%#Eval("KasaTipi") %> </p>
                                        <p>Uzunluk: <%#Eval("Uzunluk") %> METRE</p>
                                        <p>Genişlik: <%#Eval("Genislik") %> METRE</p>
                                        <p>Yükseklik: <%#Eval("Yukseklik") %> METRE</p>
                                        <hr>

                                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/AdminFiloListesiDetay.aspx?Filoid="+Eval("Filoid") %>' Class="btn btn-dark" runat="server">Görüntüle</asp:HyperLink>

                                    </div>
                                </div>



                            </ItemTemplate>

                        </asp:Repeater>

                        <br />
                        <div style="margin-left: 590px">


                            <%--<asp:Button ID="Button1" class="btn btn-success  btn-lg " runat="server" Text="Güncelle" />--%>
                        </div>

                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->

            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->




    </div>
    <!-- ./wrapper -->





</asp:Content>

