<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ResimListesi.aspx.cs" Inherits="ResimListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  
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

                    <div class="card card-primary" style="width: 200px">
                        <div class="card-header">
                            <h3 class="card-title " style="margin-left: 10px">Slider Resim Listesi </h3>
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
                                            <img src="<%#Eval("SliderResim") %>"  class="product-image" alt="Product Image">
                                        </div>

                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <br />
                                        

                                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/ResimSil.aspx?SliderResimid="+Eval("SliderResimid") %>' Class="btn btn-danger" runat="server">Sil</asp:HyperLink>

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

