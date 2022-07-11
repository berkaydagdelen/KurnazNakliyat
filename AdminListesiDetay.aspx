<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminListesiDetay.aspx.cs" Inherits="AdminListesiDetay" %>

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
                                <h3 class="card-title">Admin Ayrıntı </h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form role="form" id="quickForm">
                                <div class="card-body">

                                    <div class="form-group">
                                        <label for="TxtAdminid">Admin id</label>

                                        <asp:TextBox ID="TxtAdminid" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>


                                    </div>


                                    <div class="form-group">
                                        <label for="TxtAdSoyad">Admin Ad Soyad</label>

                                        <asp:TextBox ID="TxtAdSoyad" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                            ControlToValidate="TxtAdSoyad"
                                            ErrorMessage="Ad Soyad Girmediniz."
                                            ForeColor="Red" Font-Size="Large">
                                        </asp:RequiredFieldValidator>


                                    </div>


                                    <div class="form-group">
                                        <label for="TxtTelefon">Telefon</label>

                                        <asp:TextBox ID="TxtTelefon" CssClass="form-control" onkeypress="return SayiGirme(event)" runat="server" MaxLength="10"></asp:TextBox>

                                        <%--boş olursa uyarı--%>

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"
                                            ControlToValidate="TxtTelefon"
                                            ErrorMessage="Telefon No Girmediniz."
                                            ForeColor="Red" Font-Size="Large">

                                        </asp:RequiredFieldValidator>

                                        <%--min max karakter--%>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" Font-Size="Large" ControlToValidate="TxtTelefon" runat="server" ErrorMessage="Lütfen Telefon No'sunu Doğru Giriniz." ValidationExpression=".{10}.*"></asp:RegularExpressionValidator>

                                    </div>

                                    <div class="form-group">
                                        <label for="TxtKullaniciAdi">Kullanıcı Adı</label>


                                        <asp:TextBox ID="TxtKullaniciAdi" class="form-control" placeholder="Kullanici Adi*" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                            ControlToValidate="TxtKullaniciAdi"
                                            ErrorMessage="Kullanıcı Adı Girmediniz."
                                            ForeColor="Red" Font-Size="Large">
                                        </asp:RequiredFieldValidator>
                                    </div>


                                    <div class="form-group">
                                        <label for="TxtSifre">Şifre</label>

                                        <asp:TextBox ID="TxtSifre" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                            ControlToValidate="TxtSifre"
                                            ErrorMessage="Şifre Girmediniz."
                                            ForeColor="Red" Font-Size="Large">
                                        </asp:RequiredFieldValidator>

                                    </div>

                                    <div class="form-group">
                                        <label for="TxtYer">Yer(Konum)</label>

                                        <asp:TextBox ID="TxtYer" class="form-control" runat="server"></asp:TextBox>

                                    </div>
                                    <br />
                                    <div class="form-group">
                                        <label for="TxtMail">Mail</label>

                                        <asp:TextBox ID="TxtMail" CssClass="form-control" runat="server"></asp:TextBox>

                                    </div>
                                    <br />
                                    <div class="form-group">


                                        <label for="TxtTcNo">TC No</label>

                                        <asp:TextBox ID="TxtTcNo" onkeypress="return SayiGirme(event)" class="form-control" runat="server" MaxLength="11"></asp:TextBox>

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic"
                                            ControlToValidate="TxtTcNo"
                                            ErrorMessage="T.C. No Girmediniz."
                                            ForeColor="Red" Font-Size="Large">
                                        </asp:RequiredFieldValidator>

                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="TxtTcNo" ForeColor="Red" runat="server" ErrorMessage="Lütfen T.C. No'sunu Doğru Giriniz." ValidationExpression=".{11}.*"></asp:RegularExpressionValidator>


                                    </div>



                                    <div class="form-group">
                                        <label for="TxtFacebook">Facebook</label>

                                        <asp:TextBox ID="TxtFacebook" class="form-control" runat="server"></asp:TextBox>

                                    </div>
                                    <br />

                                    <div class="form-group">
                                        <label for="TxtTwitter">Twitter</label>

                                        <asp:TextBox ID="TxtTwitter" class="form-control" runat="server"></asp:TextBox>

                                    </div>
                                    <br />

                                    <div class="form-group">
                                        <label for="Txtinstagram">İnstagram</label>

                                        <asp:TextBox ID="Txtinstagram" class="form-control" runat="server"></asp:TextBox>

                                    </div>
                                    <br />

                                    <div class="form-group">
                                        <label for="TxtYoutube">Youtube</label>

                                        <asp:TextBox ID="TxtYoutube" class="form-control" runat="server"></asp:TextBox>

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

