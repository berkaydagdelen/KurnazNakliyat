<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SifremiUnuttumDetay.aspx.cs" Inherits="SifremiUnuttumDetay" %>

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
                    <h2 class="heading-section">ŞİFRE SIFIRLAMA</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-12 col-lg-10">
                    <div class="wrap d-md-flex">
                        <asp:Repeater ID="Repeater13" runat="server">
                            <ItemTemplate>


                                <a href="LoginGiris.aspx" class="logo">

                                    <img src="<%#Eval("Logo") %>" class="img" style="width: 300px; height: 100px; margin-top: 100px; margin-left: 20px" alt="">
                                </a>

                            </ItemTemplate>
                        </asp:Repeater>

                        <div class="login-wrap p-4 p-md-5">
                            <div class="d-flex">
                                <div class="w-100">
                                    <h3 class="mb-4"></h3>
                                </div>


                            </div>
                            <form runat="server" action="#" class="signin-form">
                                <div class="form-group mb-3">
                                    <label class="label" for="TxtSifre">ŞİFRE</label>
                                    <asp:TextBox ID="TxtSifre" type="text" class="form-control" placeholder="Şifre" runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                        ControlToValidate="TxtSifre"
                                        ErrorMessage="Şifre Girmediniz."
                                        ForeColor="Red">
                                    </asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group mb-3">
                                    <label class="label" for="TxtSifre">ŞİFRE TEKRAR</label>
                                    <asp:TextBox ID="TxtTekrarSifre" type="text" class="form-control" placeholder="Tekrar Şifre" runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                        ControlToValidate="TxtTekrarSifre"
                                        ErrorMessage="Şifre Girmediniz."
                                        ForeColor="Red">
                                    </asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group">
                                    <asp:Button ID="BtnGiris" runat="server" type="submit" class="form-control btn btn-primary rounded submit px-3" Text="Şifreyi Sıfırla" OnClick="BtnGiris_Click" />
                                </div>
                                <div class="form-group d-md-flex">
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

