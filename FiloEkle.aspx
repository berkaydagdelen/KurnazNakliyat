<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="FiloEkle.aspx.cs" Inherits="FiloEkle" %>

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
                                <h3 class="card-title">Filo Ekle </h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form role="form" id="quickForm">
                                <div class="card-body">



                                    <div class="form-group">
                                        <label for="TxtBaslik">Araç Adi</label>

                                        <asp:TextBox ID="TxtAracAdi" class="form-control"  runat="server"></asp:TextBox>

                                    </div>

                                    <div class="form-group">
                                        <label for="TxtKasaTipi">Kasa Tipi</label>

                                        <asp:TextBox ID="TxtKasaTipi" class="form-control"  runat="server"></asp:TextBox>

                                    </div>
                                    <div class="form-group">
                                        <label for="TxtUzunluk">Uzunluk</label>

                                       <asp:TextBox ID="TxtUzunluk" onkeypress="return SayiGirme(event)" class="form-control"  runat="server"></asp:TextBox>

                                    </div>
                                    <div class="form-group">
                                        <label for="TxtGenislik">Genişlik</label>

                                        <asp:TextBox ID="TxtGenislik" onkeypress="return SayiGirme(event)" class="form-control"  runat="server"></asp:TextBox>

                                    </div>
                                    <div class="form-group">
                                        <label for="TxtYukseklik">Yükseklik</label>

                                        <asp:TextBox ID="TxtYukseklik" onkeypress="return SayiGirme(event)" class="form-control"  runat="server"></asp:TextBox>

                                    </div>




                                    <div class="form-group">


                                        <label for="FileUpload1">RESİM</label>

                                        <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />

                                    </div>



                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">


                                    <asp:Button ID="BtnEkle" runat="server" class="btn btn-primary" Text="Ekle" OnClick="BtnEkle_Click" />
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

