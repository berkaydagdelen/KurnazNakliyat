<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminEkle.aspx.cs" Inherits="AdminEkle" %>

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
                                <h3 class="card-title">Admin Ekle </h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form role="form" id="quickForm">
                                <div class="card-body">



                                    <div class="form-group">
                                        <label for="TxtAdSoyad">Ad Soyad*</label>

                                        <asp:TextBox ID="TxtAdSoyad" class="form-control" placeholder="Ad Soyad*" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                            ControlToValidate="TxtAdSoyad"
                                            ErrorMessage="Ad Soyad Girmediniz."
                                            ForeColor="Red" Font-Size="Large">
                                        </asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-group">
                                        <label for="TxtTelefonNo">Telefon No*</label>

                                        <asp:TextBox ID="TxtTelefonNo" class="form-control" onkeypress="return SayiGirme(event)" placeholder="+09" runat="server" MaxLength="10"></asp:TextBox>

                                        <%--boş olursa uyarı--%>

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"
                                            ControlToValidate="TxtTelefonNo"
                                            ErrorMessage="Telefon No Girmediniz."
                                            ForeColor="Red" Font-Size="Large">
                                            
                                        </asp:RequiredFieldValidator>

                                        <%--min max karakter--%>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1"  ForeColor="Red" Font-Size="Large" ControlToValidate="TxtTelefonNo" runat="server" ErrorMessage="Lütfen Telefon No'sunu Doğru Giriniz." ValidationExpression=".{10}.*"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                        <label for="TxtKullaniciAdi">Kullanıcı Adı*</label>

                                        <asp:TextBox ID="TxtKullaniciAdi" class="form-control" placeholder="Kullanici Adi*" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                            ControlToValidate="TxtKullaniciAdi"
                                            ErrorMessage="Kullanıcı Adı Girmediniz."
                                            ForeColor="Red" Font-Size="Large">
                                        </asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label for="TxtSifre">Şifre*</label>

                                        <asp:TextBox ID="TxtSifre" class="form-control" placeholder="Şifre*" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                            ControlToValidate="TxtSifre"
                                            ErrorMessage="Şifre Girmediniz."
                                            ForeColor="Red" Font-Size="Large">
                                        </asp:RequiredFieldValidator>
                                    </div>


                                    <div class="form-group">
                                        <label for="TxtYer">Yer(Konum)</label>

                                        <asp:TextBox ID="TxtYer" class="form-control" placeholder="Yer(Konum)" runat="server"></asp:TextBox>

                                    </div>
                                    <br />
                                    <div class="form-group">
                                        <label for="TxtMail">Mail</label>

                                        <asp:TextBox ID="TxtMail" class="form-control" placeholder="Mail" runat="server"></asp:TextBox>

                                    </div>
                                    <br />
                                    <div class="form-group">
                                        <label for="TxtTcNo">TC NO*</label>

                                        <asp:TextBox ID="TxtTcNo" class="form-control" onkeypress="return SayiGirme(event)" placeholder="T.C. Kimlik No*" runat="server" MaxLength="11"></asp:TextBox>



                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic"
                                            ControlToValidate="TxtTcNo"
                                            ErrorMessage="T.C. No Girmediniz."
                                            ForeColor="Red" Font-Size="Large">
                                        </asp:RequiredFieldValidator>

                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="TxtTcNo" ForeColor="Red" runat="server" ErrorMessage="Lütfen T.C. No'sunu Doğru Giriniz." ValidationExpression=".{11}.*"></asp:RegularExpressionValidator>

                                    </div>



                                    <div class="form-group">
                                        <label for="TxtFacebook">Facebook</label>

                                        <asp:TextBox ID="TxtFacebook" class="form-control" placeholder="Facebook" runat="server"></asp:TextBox>

                                    </div>
                                    <br />

                                    <div class="form-group">
                                        <label for="TxtTwitter">Twitter</label>

                                        <asp:TextBox ID="TxtTwitter" class="form-control" placeholder="Twitter" runat="server"></asp:TextBox>

                                    </div>
                                    <br />

                                    <div class="form-group">
                                        <label for="Txtinstagram">İnstagram</label>

                                        <asp:TextBox ID="Txtinstagram" class="form-control" placeholder="İnstagram" runat="server"></asp:TextBox>

                                    </div>
                                    <br />

                                    <div class="form-group">
                                        <label for="TxtYoutube">Youtube</label>

                                        <asp:TextBox ID="TxtYoutube" class="form-control" placeholder="YouTube" runat="server"></asp:TextBox>

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

