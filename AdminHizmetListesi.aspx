<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminHizmetListesi.aspx.cs" Inherits="AdminHizmetListesi" %>

<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>

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
                        <h3 class="card-title">Hizmet Listesi </h3>
                    </div>

                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div id="jsGrid1">

                        <table class="table table-bordered table-hover table-responsive-md ">

                            <tr>
                                <th scope="col">İD</th>
                                <th scope="col">HİZMET ADI</th>
                                <th scope="col">HİZMET TÜRÜ</th>
                                <th scope="col">İŞLEM</th>


                            </tr>

                            <tbody>

                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>

                                            <td><%#Eval("Hizmetid") %> </td>
                                            <td><%#Eval("HizmetAdi") %></td>
                                            <td><%#Eval("HizmetTuru") %></td>



                                            <td>
                                                <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/AdminHizmetListesiDetay.aspx?Hizmetid="+Eval("Hizmetid") %>' runat="server" CssClass="btn btn-dark ">GÖRÜNTÜLE</asp:HyperLink>



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

