<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ReferansEkle.aspx.cs" Inherits="ReferansEkle" %>

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
                                <h3 class="card-title">Referans Oluştur </h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form role="form" id="quickForm">
                                <div class="card-body">



                                    <div class="form-group">
                                        <label for="TxtAdSoyad">Ad Soyad</label>

                                        <asp:TextBox ID="TxtAdSoyad" CssClass="form-control" MaxLength="10" placeholder="Ad Soyad" runat="server"></asp:TextBox>

                                    </div>

                                    <div class="form-group">
                                        <label for="TxtMemnuniyetMesaj">Memnuniyet Mesaj</label>


                                        <textarea id="TxtMemnuniyetMesaj" maxlength="160" placeholder="Lütfen 160 Karakter Giriniz...." class="form-control" required runat="server" cols="20" rows="5"></textarea>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TxtMemnuniyetMesaj" ForeColor="Red" runat="server" ErrorMessage="Lütfen 160 Karakter Giriniz." ValidationExpression=".{160}.*"></asp:RegularExpressionValidator>



                                    </div>


                                    <br />

                                    <div class="form-group">


                                        <label for="FileUpload1">Referans Şirket Logo</label>

                                        <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />

                                    </div>





                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">

                                    <asp:Button ID="BtnOlustur" runat="server" class="btn btn-primary" Text="OLuştur" OnClick="BtnOlustur_Click" />





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

