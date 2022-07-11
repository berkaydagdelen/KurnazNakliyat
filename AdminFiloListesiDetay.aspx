<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminFiloListesiDetay.aspx.cs" Inherits="FiloGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <script type="text/javascript">
        function SayiGirme(degisken) {
            degisken = (degisken) ? degisken : window.event;
            var charCode = (degisken.which) ? degisken.which : degisken.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }
    </script>

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
                                <h3 class="card-title">Filo Güncelle </h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form role="form" id="quickForm">
                                <div class="card-body">



                                    <div class="form-group">
                                        <label for="Txtid">id</label>

                                        <asp:TextBox ID="Txtid" class="form-control" runat="server"></asp:TextBox>

                                    </div>

                                    <div class="form-group">
                                        <label for="TxtBaslik">Araç Adi</label>

                                        <asp:TextBox ID="TxtAracAdi" class="form-control" runat="server"></asp:TextBox>

                                    </div>

                                    <div class="form-group">
                                        <label for="TxtKasaTipi">Kasa Tipi</label>

                                        <asp:TextBox ID="TxtKasaTipi" class="form-control" runat="server"></asp:TextBox>

                                    </div>
                                    <div class="form-group">
                                        <label for="TxtUzunluk">Uzunluk</label>

                                        <asp:TextBox ID="TxtUzunluk" onkeypress="return SayiGirme(event)" class="form-control" runat="server"></asp:TextBox>

                                    </div>
                                    <div class="form-group">
                                        <label for="TxtGenislik">Genişlik</label>

                                        <asp:TextBox ID="TxtGenislik" onkeypress="return SayiGirme(event)" class="form-control" runat="server"></asp:TextBox>

                                    </div>
                                    <div class="form-group">
                                        <label for="TxtYukseklik">Yükseklik</label>

                                        <asp:TextBox ID="TxtYukseklik" onkeypress="return SayiGirme(event)" class="form-control" runat="server"></asp:TextBox>

                                    </div>

                                    <div class="form-group">
                                        <label for="TxtResim">Resim</label>

                                    </div>
                                    <asp:Image ID="Image1" Style="max-width: 300px; max-height: 500px;" runat="server" />
                                    
                                    <div class="form-group">

                                        <%--resim seçme popup--%>

                                        <button type="button" style="width: 150px; margin-top:20px" class="btn btn-warning" data-toggle="modal" data-target="#Modal1">
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

                                                    <asp:Button ID="BtnSec" runat="server" Text="Seç" CssClass="btn btn-primary" OnClick="BtnSec_Click" />
                                                    <asp:Button ID="BtnVazgec" runat="server" Text="Vazgeç" CssClass="btn btn-danger" data-dismiss="modal" />
                                                </div>

                                            </div>
                                        </div>
                                    </div>





                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">

                                    <asp:Button ID="BtnSil" runat="server" class="btn btn-danger" Text="Sil" OnClick="BtnSil_Click" />
                                    <asp:Button ID="BtnGuncelle" runat="server" class="btn btn-success" Text="Güncelle" OnClick="Button1_Click" />
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

