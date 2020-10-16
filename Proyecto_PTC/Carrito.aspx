<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Proyecto_PTC.Carrito1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Carrito</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
</head>
<body>

    <style type="text/css">

        body{
            background-color: #DCDCDC;
        }

        .container {
            margin: 200px;
            margin-left: 450px;
        }

        .googletranslate {
            margin-top: 10px !important;
            margin-left: 20px !important;
        }

        .goog-te-banner-frame {
            display: none !important;
        }

    </style>

        <form runat="server" >
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="Inicio.aspx">Frank Gael</a>
            <button class="navbar-toggler" type="button">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Inicio.aspx">Inicio</a>
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

        <div class="container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" OnRowCommand="GridView1_OnRowCommand" DataKeyNames="id" BackColor="#99CCFF">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Nombre_Usuario" HeaderText="Usuario" SortExpression="Nombre_Usuario" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                    <asp:BoundField DataField="precioAcumulado" HeaderText="Total" SortExpression="precioAcumulado" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="delete"
                                Text="Delete" CommandArgument='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#99CCFF" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Total:"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
                

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:frankgaelConnectionString %>" ProviderName="<%$ ConnectionStrings:frankgaelConnectionString.ProviderName %>" SelectCommand="SELECT c.id, u.Nombre_Usuario, z.Nombre, c.Cantidad, c.precioAcumulado
FROM carrito c
INNER JOIN usuarios u ON c.id_usuario = u.Id_usuario
INNER JOIN zapatos z ON c.id_zapato = z.Id_zapato"
                DeleteCommand="DELETE FROM carrito WHERE (id = 4)"></asp:SqlDataSource>
        </div>
        </form>
        
   

    <script src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
