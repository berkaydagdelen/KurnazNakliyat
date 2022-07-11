<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KiralamaHizmetiEkle.aspx.cs" Inherits="KiralamaHizmetiEkle" %>

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
                                <h3 class="card-title">Kiralama Hizmeti Oluştur </h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form role="form" id="quickForm">
                                <div class="card-body">

                                    <div class="form-group">
                                        <label for="TxtHizmetAdi">Hizmet(Malzeme) Adı</label>

                                        <asp:TextBox ID="TxtHizmetAdi" CssClass="form-control"  placeholder="Hizmet(Malzeme) Adı" runat="server"></asp:TextBox>

                                    </div>


                                    <div class="form-group">
                                        <label for="TxtYapilanYer">Hizmet Yapılan Yer</label>

                                        <asp:TextBox ID="TxtYapilanYer" class="form-control"  placeholder="Hizmet Yapılan Yer" runat="server"></asp:TextBox>

                                    </div>


                                    <div class="form-group">


                                        <label for="FileUpload1">Hizmet Resim</label>

                                        <asp:FileUpload ID="FileUpload1" class="form-control"  runat="server" />

                                    </div>



                                    <div class="form-group">

                                        <label for="DropDownList1">Hizmet Adı</label>
                                        <asp:DropDownList ID="DropDownList1" class="form-control"  runat="server"></asp:DropDownList>


                                    </div>



                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">

                                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Oluştur" OnClick="Button1_Click" />
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

