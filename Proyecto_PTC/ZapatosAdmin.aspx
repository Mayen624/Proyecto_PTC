﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZapatosAdmin.aspx.cs" Inherits="Proyecto_PTC.ZapatosAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" />
    <title>Inventario</title>
</head>
<body>
    <style type="text/css">

        h1 {
            text-align: center; 
            padding: 30px;
        }

        .googletranslate {
            margin-top: 10px !important;
            margin-left: 20px !important;
        }

        .goog-te-banner-frame{
            display: none !important;
        }

         body{
             top: 0 !important;
         }

         .container{
             text-align: center;
             padding: 40px; 
         }

         .table{
             text-align: center;
            
         }
    </style>

    <!-- Barra de navegacion-->
    <form runat="server" id="f1">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="AdminHome.aspx">Admin</a>
        <button class="navbar-toggler" type="button">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="AdminHome.aspx" >Administrador</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link " href="UsersAdmin.aspx">Usuarios</a>
                </li>
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



   
        <h1>Bienvenido a inventario</h1>
         <div class="container">
            <asp:GridView ID="gridview1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Id_zapato" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id_zapato" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id_zapato" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                    <asp:BoundField DataField="Img" HeaderText="Img" SortExpression="Img" />
                    <asp:BoundField />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <br />
            <br /> 
            <br />
             <br />

            <table>
                <tr>
                    <td>
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                        <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                    </td>
                     <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Descripcion"></asp:Label></td>
                     <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Cantidad"></asp:Label></td>
                     <td><asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Precio"></asp:Label></td>
                     <td><asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="Categoria"></asp:Label></td>
                     <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label7" runat="server" Text="Image"></asp:Label></td>
                    <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
                    
                </tr>
                <tr>
                    <td><asp:Button ID="Button1" runat="server" Text="Guardar" OnClick="Button1_Click" /> 
            <asp:Button ID="Button2" runat="server" Text="Borrar" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
             </div>
        </form>

        
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:frankgaelDB %>" ProviderName="<%$ ConnectionStrings:frankgaelDB.ProviderName %>" SelectCommand="SELECT Id_zapato, Precio, Descripcion, Cantidad, Nombre, Categoria, Img FROM zapatos" InsertCommand="INSERT INTO carrito() VALUES ()" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    <script src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
</body>
</html>
