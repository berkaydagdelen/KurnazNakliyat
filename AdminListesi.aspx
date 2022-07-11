<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminListesi.aspx.cs" Inherits="AdminListesi" %>

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
            <div class="card">
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Admin Listesi </h3>
                    </div>

                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div id="jsGrid1">

                        <table class="table table-bordered table-hover ">

                            <tr>
                                <th scope="col">AD SOYAD</th>
                                <th scope="col">T.C NO</th>
                                <th scope="col">İŞLEM</th>


                            </tr>

                            <tbody>

                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>

                                            <td><%#Eval("AdminAdSoyad") %> </td>
                                            <td><%#Eval("TcNo") %></td>




                                            <td>
                                                <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/AdminListesiDetay.aspx?Adminid="+Eval("Adminid") %>' runat="server" CssClass="btn btn-dark ">GÖRÜNTÜLE</asp:HyperLink>



                                            </td>



                                        </tr>

                                    </ItemTemplate>

                                </asp:Repeater>




                            </tbody>
                        </table>




                    </div>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->


    <!-- Control Sidebar -->

    <!-- /.control-sidebar -->

    <!-- ./wrapper -->







</asp:Content>

