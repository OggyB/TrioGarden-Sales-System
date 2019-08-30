<%@ Page Language="C#" AutoEventWireup="true" CodeFile="girisYap.aspx.cs" Inherits="girisYap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Trio Garden Giriş</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/giris.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
        crossorigin="anonymous">
    
    
</head>
<body>
    <div class="fixCardLogin">
        <header></header>
        <main>
            <div class="p-5 login-bg col-10 col-sm-8 col-md-6 col-lg-3">
                    <!-- <h4 class="text-center mb-5">Trio <tt>Garden</tt></h4> -->
                    <div class="text-center mb-5">
                            <img src="img/logo/triologosiyah90.png" height="70" alt="">
                    </div>
    <form id="form1" runat="server">
    <div class="form-group">
                                
        <asp:TextBox ID="txtKullanici" runat="server" placeholder="Kullanıcı Adı" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group mb-4">
                                <asp:TextBox ID="txtSifre" runat="server" placeholder="Şifre" CssClass="form-control sty1" TextMode="Password"></asp:TextBox>
                            </div>
    
                            <div class="form-group">
                                <a href="#" class="float-left forgot-link my-2"></a>                                
                                <asp:Button ID="btnGirisYap" runat="server" CssClass="btn btn-purple float-right" Text="Giriş Yap" OnClick="btnGirisYap_Click" />
                            </div>
                            

        <div class="social-auth-links text-center">
      <p><asp:Label ID="lblDurum" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label></p>
        </div>
                            <!-- <div class="text-center mt-4">
                                <a href="registration.html" class="btn-link text-capitalize f12">Yeni Kayıt olma</a>
                            </div> -->
    </form>
                </div>
        </main>
        <footer></footer>
    </div>



    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
