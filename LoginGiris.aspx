<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginGiris.aspx.cs" Inherits="login_form_14_LoginGiris" %>

<!doctype html>
<html lang="en">
<head>
    <title>Giriş</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="loginGiris/css/style.css">
</head>
<body>
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-5">
                    <h2 class="heading-section"></h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-12 col-lg-10">
                    <div class="wrap d-md-flex">
                        <asp:Repeater ID="Repeater13" runat="server">
                            <ItemTemplate>


                                <a href="LoginGiris.aspx" class="logo">

                                    <img src="<%#Eval("Logo") %>" class="img" style="max-width: 300px;max-height: 100px; margin-top: 110px; margin-left: 20px" alt="">
                                </a>

                            </ItemTemplate>
                        </asp:Repeater>

                        <div class="login-wrap p-4 p-md-5">
                            <div class="d-flex">
                                <div class="w-100">
                                    <h3 class="mb-4"></h3>
                                </div>

                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>


                                        <div class="w-100">
                                            <p class="social-media d-flex justify-content-end">

                                                <a href="<%#Eval("Facebook") %>" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
                                                <a href="<%#Eval("Twitter") %>" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a>
                                                <a href="<%#Eval("instagram") %>" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-instagram"></span></a>

                                            </p>
                                        </div>

                                    </ItemTemplate>
                                </asp:Repeater>


                            </div>
                            <form runat="server" action="#" class="signin-form">
                                <div class="form-group mb-3">
                                    <label class="label" for="TxtKullaniciAdi">Kullanıcı Adı</label>
                                    <asp:TextBox ID="TxtKullaniciAdi" type="text" class="form-control" placeholder="Kullanıcı Adı" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                        ControlToValidate="TxtKullaniciAdi"
                                        ErrorMessage="Kullanıcı Adı Girmediniz."
                                        ForeColor="Red">
                                    </asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group mb-3">
                                    <label class="label" for="TxtSifre">ŞİFRE</label>
                                    <asp:TextBox ID="TxtSifre" type="password" class="form-control" placeholder="Şifre" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                        ControlToValidate="TxtSifre"
                                        ErrorMessage="Şifre Girmediniz."
                                        ForeColor="Red">
                                    </asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group">
                                    <asp:Button ID="BtnGiris" runat="server" type="submit" class="form-control btn btn-primary rounded submit px-3" Text="Giriş Yap" OnClick="BtnGiris_Click" />
                                </div>
                                <div class="form-group d-md-flex">

                                    <div class="w-50 text-md-right" style="margin-left: 170px">
                                        <a href="SifremiUnuttum.aspx">Şifremi Unuttum</a>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="loginGiris/js/jquery.min.js"></script>
    <script src="loginGiris/js/popper.js"></script>
    <script src="loginGiris/js/bootstrap.min.js"></script>
    <script src="loginGiris/js/main.js"></script>



</body>
</html>

