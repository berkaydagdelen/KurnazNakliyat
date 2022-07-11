<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminHizmetListesiDetay.aspx.cs" Inherits="AdminHizmetListesiDetay" %>

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
                                <h3 class="card-title">Hizmet Ayrıntı </h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form role="form" id="quickForm">
                                <div class="card-body">

                                    <div class="form-group">
                                        <label for="TxtHizmetid">Hizmet id</label>

                                        <asp:TextBox ID="TxtHizmetid" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>


                                    </div>


                                    <div class="form-group">
                                        <label for="TxtHizmetAdi">Hizmet Adi</label>

                                        <asp:TextBox ID="TxtHizmetAdi" CssClass="form-control" runat="server"></asp:TextBox>

                                    </div>

                                    <div class="form-group">

                                        <label for="DropDownList1">Hizmet Türü</label>
                                        <asp:DropDownList ID="DropDownList1" class="form-control" runat="server"></asp:DropDownList>


                                    </div>

                                    <br />
                                    <div class="form-group">
                                        <label for="Image1">Hizmet Resim</label>
                                        <br />
                                        <br />
                                        <asp:Image ID="Image1" Style="max-width: 300px;max-height: 500px;" runat="server" />

                                    </div>
                                  

                                    <%--resim seçme popup--%>


                                    <button type="button" style="width: 150px; margin-top: 20px" class="btn btn-warning" data-toggle="modal" data-target="#Modal1">
                                        Resim Seç
                                    </button>
                                </div>

                                <div class="modal" id="Modal1">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h2 class="modal-title">Resim Seçme Paneli</h2>
                                            </div>
                                            <div class="modal-body">
                                                <label>
                                                    Resim
                                                </label>
                                                <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
                                                <br />
                                                <div class="form-group">
                                                    <label for="TxtBilgi" style="color: red">Güncelleme işlemi yapıldıktan sonra resim değişecektir.</label>

                                                </div>

                                                <asp:Button ID="BtnSec" runat="server" Text="Seç" CssClass="btn btn-primary" OnClick="BtnSec_Click"  />
                                                <asp:Button ID="BtnVazgec" runat="server" Text="Vazgeç" CssClass="btn btn-danger" data-dismiss="modal" />
                                            </div>

                                        </div>
                                    </div>
                                </div>
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer">

                            <asp:Button ID="BtnSil" runat="server" class="btn btn-danger" Text="SİL" OnClick="BtnSil_Click" />
                            <asp:Button ID="BtnGuncelle" runat="server" class="btn btn-success" Text="GÜNCELLE" OnClick="BtnGuncelle_Click" />




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

