<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Adminiletisim.aspx.cs" Inherits="Adminiletisim" %>


<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    

            <!-- Navbar -->

            <!-- /.navbar -->

            <!-- Main Sidebar Container -->


            <!-- Content Wrapper. Contains page content -->


            <div class="wrapper">



                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <div class="container-fluid">
                        <div class="card card-primary" style="width:150px">
                            <div class="card-header">
                                <h3 class="card-title " style="margin-left:20px">Mesajlar </h3>
                            </div>
                        </div>
                    </div>
                    <!-- /.container-fluid -->
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-md-3">
                            <a href="AdminiletisimDetay.aspx" class="btn btn-primary btn-block mb-3">Compose</a>

                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title">Folders</h3>

                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                            <i class="fas fa-minus"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="card-body p-0">
                                    <ul class="nav nav-pills flex-column">
                                        <li class="nav-item active">
                                            <a href="#" class="nav-link">
                                                <i class="fas fa-inbox"></i> Gelen Mesajlar

                                                

                                                     
                                                      <asp:Repeater ID="Repeater2" runat="server">
                                                          <ItemTemplate>



                                                              <span class="badge bg-primary float-right"><%#Eval("ToplamMesaj") %></span>

                                                          </ItemTemplate>
                                                      </asp:Repeater>

                                            </a>
                                        </li>

                                    </ul>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->

                            <!-- /.card -->
                        </div>
                        <!-- /.col -->


                        <div class="col-md-9">
                            <div class="card card-primary card-outline">
                                <div class="card-header">
                                    <h3 class="card-title">Gelen Kutusu</h3>

                                    
                                    <!-- /.card-tools -->
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body p-0">
                                    <div class="mailbox-controls">
                                        <!-- Check all button -->



                                        <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-sm" Text="Yenile" />
                                        

                                        <!-- /.btn-group -->

                                        <div class="float-right">
                                            <cc1:CollectionPager ID="CollectionPager1" runat="server" PageSize="20" SliderSize="10000" ControlCssClass="Sayfalama" ResultsLocation="None" QueryStringKey="Sayfa" BackText="« Geri" LabelText="" NextText="İleri»"></cc1:CollectionPager>
                                           
                                            <!-- /.btn-group -->
                                        </div>
                                        <!-- /.float-right -->
                                    </div>
                                    <div class="table-responsive mailbox-messages">
                                        <table class="table table-hover table-striped">
                                            <tbody>
                                                <asp:Repeater ID="Repeater1" runat="server">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td>

                                                                <label for="check1"><%#Eval("iletisimid") %></label>

                                                            </td>


                                                            <td class="mailbox-star"><a href="#"><i class="fas fa-star-o text-warning"></i></a></td>
                                                            <td class="mailbox-name"><a href="AdminiletisimDetay.aspx?iletisimid=<%#Eval("iletisimid") %>"><%#Eval("iletisimAdSoyad") %></a>  </td>



                                                            <td class="mailbox-subject"><b><%#Eval("iletisimMail") %></b> - <%#Eval("iletisimKonu") %>
                                                            </td>
                                                            <td class="mailbox-attachment"></td>
                                                            <td class="mailbox-date"><%#Eval("iletisimTarih") %></td>






                                                        </tr>
                                                    </ItemTemplate>

                                                </asp:Repeater>


                                            </tbody>
                                        </table>
                                        <!-- /.table -->
                                    </div>
                                    <!-- /.mail-box-messages -->
                                </div>
                                <!-- /.card-body -->

                            </div>
                            <!-- /.card -->
                        </div>



                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </section>
                <!-- /.content -->
            </div>


            <!-- /.content-wrapper -->


    
  


</asp:Content>

