<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminHakkimizda.aspx.cs" Inherits="AdminHakkimizda" %>

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
                            <h3 class="card-title " style="margin-left: 10px">Hakkımızda </h3>
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
                                        <p><%#Eval("hakkimizda") %> </p>

                                        <hr>
                                    </div>
                                </div>

                                <div class="row">

                                    <div class="col-12 col-sm-6">
                                        <br />
                                        <p><%#Eval("hakkimizdaAltEk") %> </p>

                                        <hr>
                                    </div>
                                </div>


                            </ItemTemplate>

                        </asp:Repeater>

                        <br />
                        <div style="float:left">


                            <asp:Button ID="Button1" class="btn btn-success btn-lg "  runat="server" Text="Güncelle" OnClick="Button1_Click1"  />

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

