<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Proyecto_PTC.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" />

    <title>Frank Gael</title>

</head>


<body>

    <style type="text/css">
       .h1admin{
           text-align: center;
           padding: 30px;
       }

       h2{
           text-align: center;
           padding: 30px;
       }
    </style>

    <!-- Barra de navegacion-->
    <form runat="server">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Admin</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="UsersAdmin.aspx">Usuarios</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="ZapatosAdmin.aspx">Inventario</a>
                </li>
            </ul>

            <ul class="navbar-nav mr-auto1">
                <li class="nav-item active">
                    <a class="nav-link" href="Login.aspx">Cerrar session</a>
                </li>
            </ul>
             
            <%--<asp:Button ID="btnLogOut2" runat="server" Text="Cerrar Session" OneClick="btnLogOut2"  OnClick="btnLogOut2_Click"/>--%>
        </div>
    </nav>

    <script type="text/javascript">
        function googleTranslateElementInit() {
            new google.translate.TranslateElement({ pageLanguage: 'es', layout: google.translate.TranslateElement.InlineLayout.SIMPLE },
                'google_translate_element');
        }
    </script>

     <!-- Formulario -->

    <div class="h1admin">
        <h1>Bienvenido Administrador</h1>
    </div>

    
    <div class="container">
             <h2>Frank Gael</h2>
       <asp:GridView ID="GridViewUsers" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"> 
        <AlternatingRowStyle BackColor="White"/>
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="Categoria" HeaderText="Categoria" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="true" ForeColor="White"/>
            <HeaderStyle BackColor="#507CD1" Font-Bold="true" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />   
            <RowStyle BackColor="#EFF3FB"/>
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="true" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBBEF" />
            <SortedAscendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
        </div>
        </form>
    <script src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
</body>
</html>
