<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto_PTC.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="EstilosCss/StyleLogin.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
    <title>Login</title>

</head>
<body>
     <style type="text/css">

         body{
             top: 0 !important;
         }

        .googletranslate {
            margin-top: 10px !important;
            margin-left: 20px !important;
        }

        .goog-te-banner-frame{
            display: none !important;
        }
    </style>

    <form id="formLogin" runat="server">
        <nav class="navbar navbar-expand-sm fixed-top">
            <a class="navbar-brand" href="Inicio.aspx">Shoes</a>
            <asp:Button ID="btnregistro" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Registrarme" OnClick="btnregistro_Click" />
            <div class="Collapse navbar-collapse">
                 <ul class="navbar-nav mr-auto">
                     <li>
                    <a href="#">
                        <div class="googletranslate" id="google_translate_element"></div>
                    </a>
                </li>
                 </ul>
            </div>
        </nav>

        <script type="text/javascript">
        function googleTranslateElementInit() {
            new google.translate.TranslateElement({ pageLanguage: 'es', layout: google.translate.TranslateElement.InlineLayout.SIMPLE },
                'google_translate_element');
        }
        </script>

        <div class="container">
            <img src="Img/user.jpg" />
            <h1>Iniciar Sesion</h1>
            <div class="form-group">
                <asp:TextBox ID="txtUser" runat="server" placeholder="Usuario" type="text" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtPassword" runat="server" placeholder="Contraseña" type="password" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnIngresar" runat="server" Text="Entrar" CssClass="form-control btn btn-primary" OnClick="btnIngresar_Click" />
            </div>
            <div>
                <asp:HyperLink ID="Olvidastes" runat="server" href="olvide mi contraseña" />
            </div>
            <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
        </div>
    </form>

    <script src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
</body>
</html>
