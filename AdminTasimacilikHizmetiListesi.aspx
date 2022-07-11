<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminTasimacilikHizmetiListesi.aspx.cs" Inherits="TasimacilikHizmetiListesi" %>

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
                        <h3 class="card-title">Taşımacılık Listesi </h3>
                    </div>

                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div id="jsGrid1">

                        <table class="table table-bordered table-hover  table-responsive-md">

                            <tr>
                                <th scope="col">İD</th>
                                <th scope="col">HİZMET YAPILAN YER</th>
                                <th scope="col">HİZMET ADI</th>
                            
                                 <th scope="col">İŞLEM</th>



                            </tr>

                            <tbody>

                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>

                                            <td><%#Eval("HizmetDetayid") %> </td>
                                            <td><%#Eval("HizmetDetayYer") %></td>
                                            <td><%#Eval("HizmetAdi") %></td>
                                          




                                            <td>
                                                <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/AdminTasimacilikHizmetiListesiDetay.aspx?HizmetDetayid="+Eval("HizmetDetayid") %>' runat="server" CssClass="btn btn-dark ">GÖRÜNTÜLE</asp:HyperLink>



                                            </td>



                                        </tr>

                                    </ItemTemplate>

                                </asp:Repeater>




                            </tbody>
                        </table>
                        <div class="float-right">

                            <cc1:CollectionPager ID="CollectionPager1" runat="server" PageSize="15" SliderSize="10000" ControlCssClass="Sayfalama" ResultsLocation="None" QueryStringKey="Sayfa" BackText="« Geri" LabelText="" NextText="İleri»"></cc1:CollectionPager>
                        </div>



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

