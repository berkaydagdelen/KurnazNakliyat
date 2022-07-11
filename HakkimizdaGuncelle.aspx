<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkimizdaGuncelle.aspx.cs" Inherits="HakkimizdaGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <!-- Content Wrapper. Contains page content -->
    <div class="wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                    </div>

                </div>
            </div>
            <!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-12">
                        <!-- jquery validation -->
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Hakkımızda Güncelle </h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form role="form" id="quickForm">
                                <div class="card-body">

                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Hakkımızda</label>

                                        <asp:TextBox ID="TxtHakkimzida" class="form-control" placeholder="Hakkımızda" runat="server" Height="200px" TextMode="MultiLine"></asp:TextBox>

                                    </div>

                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Hakkımızda Alt EK</label>

                                        <asp:TextBox ID="TxtHakkimizdaAltEk" class="form-control" placeholder="Hakkımızda Alt Ek" runat="server" Height="100px"  TextMode="MultiLine"></asp:TextBox>

                                    </div>

                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">

                                    <asp:Button ID="Button1"  runat="server" class="btn btn-primary" Text="Kaydet" OnClick="Button1_Click" />
                                </div>
                            </form>
                        </div>
                        <!-- /.card -->
                    </div>
                    <!--/.col (left) -->
                    <!-- right column -->

                    <!--/.col (right) -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->




</asp:Content>

