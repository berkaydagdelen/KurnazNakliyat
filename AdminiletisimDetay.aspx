<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminiletisimDetay.aspx.cs" Inherits="AdminiletisimDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <!-- Navbar -->

    <!-- /.navbar -->

    <!-- Main Sidebar Container -->


    <!-- Content Wrapper. Contains page content -->


    <div class="wrapper">



        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title ">Mesajlar </h3>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-3">
                    <a href="#" class="btn btn-primary btn-block mb-3">Compose</a>

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
                                    <a href="Adminiletisim.aspx" class="nav-link">
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

                        <!-- /.card-header -->

                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>

                                <div class="card-body p-0">
                                    <div class="mailbox-read-info">
                                        <h5><%#Eval("iletisimKonu") %></h5>
                                        <br />
                                        <h6>From: <%#Eval("iletisimMail") %>

                                            <span class="mailbox-read-time float-right"><%#Eval("iletisimTarih") %></span></h6>
                                    </div>
                                    <!-- /.mailbox-read-info -->

                                    <!-- /.mailbox-controls -->
                                    <div class="mailbox-read-message">
                                        <p><%#Eval("iletisimMesaj") %></p>


                                    </div>
                                    <!-- /.mailbox-read-message -->
                                </div>


                            </ItemTemplate>

                        </asp:Repeater>

                        <!-- /.card-body -->
                        <br />
                        <br />
                        <!-- /.card-footer -->
                        <div class="card-footer">



                            <i class="far fa-trash-alt">
                                <asp:Button ID="Button1" type="button" class="btn btn-danger " runat="server" Text="SİL" OnClick="Button1_Click" /></i>

                        </div>
                        <!-- /.card-footer -->
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

