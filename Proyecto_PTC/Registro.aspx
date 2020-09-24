<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Proyecto_PTC.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
    <title>Registro</title>
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

        .container{
            text-align: center;
            padding: 150px;
        }
        .h1 {
            text-align: center;
        }

        .h2 {
            text-align: center;
        }
    </style>

    <script type="text/javascript">
        function validar(e) { //1
            tecla = (document.all) ? e.keyCode : e.which; //2
            if (tecla == 8) return true; //3
            patron = /[A-Za-z\s]/; //4
            te = String.fromCharCode(tecla);
            return patron.test(te); //6 
        }
    </script>
    <script type="text/javascript">
        function numeros(nu) { //1
            tecla = (document.all) ? e.keyCode : e.which; //2
            if (tecla == 8) return true; //3
            ppatron = /\d/; //4
            te = String.fromCharCode(tecla);
            return patron.test(te); //6 
        }
    </script>
    <script>
        function NumCheck(e, field) {
            key = e.keyCode ? e.keyCode : e.which
            // backspace
            if (key == 8) return true
            // 0-9
            if (key > 47 && key < 58) {
                if (field.value == "") return true
                RegExp = /.[0-9]{2}$/
                return !(regexp.test(field.value))
            }
            //
            if (key == 46) {
                if (field.value == "") return true
                regexp = /^[0-9] +$/
                return regexp.test(fiel.value)
            }
            //other key
            return false
        }
    </script>

    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-sm fixed-top">
            <a class="navbar-brand" href="Inicio.aspx">Shoes</a>
            <asp:Button ID="btnLogin" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Login" OnClick="btnLogin_Click1" />
            <div class="Collapse navbar-collapse">
                 <ul class="navbar-nav mr-auto">
                     <li>
                    <a href="#">
                        <div class="googletranslate" id="google_translate_element"></div>
                    </a>
                </li>
                 </ul>
            </div>

            <script type="text/javascript">
        function googleTranslateElementInit() {
            new google.translate.TranslateElement({ pageLanguage: 'es', layout: google.translate.TranslateElement.InlineLayout.SIMPLE },
                'google_translate_element');
        }
            </script>
        </nav>

        <div class="container ">
            <h1>Registro</h1>
            <div class="form-group">
                <asp:TextBox ID="txtName" runat="server" placeholder="Nombre" type="text" class="form-control" onpaste="return false" onkeypress="return validar(event)" ></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtLastname" runat="server" placeholder="Apellido" type="text" class="form-control" onpaste="return false" onkeypress="return validar(event)"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtUser" runat="server" placeholder="Usuario" type="text" class="form-control" onpaste="return false" onkeypress="return validar(event)"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtPassword" runat="server" placeholder="Contraseña" type="password" class="form-control" minlength="5" onpaste="return false" onkeypress="return numeros(num)"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtPassword2" runat="server" placeholder="Repita contraseña" type="password" class="form-control" minlength="5" onpaste="return false" onkeypress="return numeros(num)"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtGMAIL" runat="server" placeholder="Gmail" type="email" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button runat="server" Text="Registrarme" CssClass="form-control btn btn-primary" OnClick="Unnamed1_Click"></asp:Button>
                <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
            </div>
        </div>
        <script src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
