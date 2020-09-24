<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Proyecto_PTC.Inicio" EnableEventValidation="false"%>
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

        h1 {
            text-align: center; 
        }

        .carousel-inner img {
            width: 100%;
        }

        .googletranslate {
            margin-top: 10px !important;
            margin-left: 20px !important;
        }

        .goog-te-banner-frame{
            display: none !important;
        }

        .row{
            padding: 10px;
        }

        .row .card:hover{
           transform: translateY(-15px);
           box-shadow: 0 12px 16px rgba(0, 0, 0, 0.2);
        }

        .col-3{
           padding: 10px !important; 
       }


        body{
            top: 0 !important;
        }

        .navbar{
            background-color: #DCDCDC;
        }
    </style>

    <!-- Barra de navegacion-->
    <form id="form" runat="server">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Frank Gael</a>
        <button class="navbar-toggler" type="button">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="Hombre.aspx" >Hombre</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link " href="Mujer.aspx">Mujer</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link " href="Niños.aspx">Niños</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link " href="Deportes.aspx">Deportes</a>
                </li>
                <li>
                    <a href="#">
                        <div class="googletranslate" id="google_translate_element"></div>
                    </a>
                </li>
           </ul>
        </div>
        <asp:Button ID="btnCarrito" runat="server" class="btn btn-ligth" Text="Carrito" OnClick="BtnCarrito" /> 
        <asp:Button ID="btnLogOut" runat="server" class="btn btn-light" Text="Cerrar Session" OneClick="BtnLogOut_Click" OnClick="btnLogOut_Click"/>
        
    </nav>

    <script type="text/javascript">
        function googleTranslateElementInit() {
            new google.translate.TranslateElement({ pageLanguage: 'es', layout: google.translate.TranslateElement.InlineLayout.SIMPLE },
                'google_translate_element');
        }
    </script>

    <br />
    <br />

    <!-- Carusel de imagenes-->

    <div id="demo" class="carousel slide" data-ride="carousel">
        <!-- Indicaciones del caousel -->
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
        </ul>

        <!-- Presentacion de las imagenes en el carousel -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Img/Banner.png" width="1000" height="500" />
            </div>
            <div class="carousel-item">
                <img src="https://mensandbeauty.com/wp-content/uploads/2019/07/mejores-marcas-de-ropa-hombre-accesorios-complementos-zapatos-2.jpg" width="1000" height="500" />
            </div>
            <div class="carousel-item">
                <img src="https://media.mayoral.com/wcsstore/mayoral/images/Attachment/mayoral_banner_hotspotmegamenu_I19_calzado_mini_o.jpg" width="1000" height="500" />
            </div>


            <!-- Control de izquierda y derecha del carousel -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
        <asp:Label ID="label1" runat="server" Text=""></asp:Label>
        <asp:Label ID="label2" runat="server" Text=""></asp:Label>
    </div>

    <br />
    <br />

    <h1>Destacados</h1>
    <br />
    <br />


    <!-- Alerta de del carrito de compras-->

        <br />
        <div class="alert alert-success">
            pantalla de mensaje...
            <a href="Carrito.aspx" class="badge badge-success">Ver carrito</a>
        </div>

       
        <div class="row">
            <asp:ListView ID="ListView1" runat="server" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                <ItemTemplate>
                    <div class="col-3">
                    <div class="card">
                        <img
                            title="Titulo prducto"
                            alt="Titulo"
                            class="card-img-top"
                            src="Img/Productos/<%#Eval("Img")%>" />
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <h2><%#Eval("Precio")%>$</h2>
                            <p class="card-text"><%#Eval("Descripcion")%></p>
                            <asp:Button runat="server" Text="Agregar al carrito" CssClass="btn btn-dark" OnClick="btnButton1_Click"  CommandArgument='<%#Eval("Id_zapato")%>' />
                        </div>
              	    </div>
                </div>
                </ItemTemplate>
            </asp:ListView>

            <asp:ListView ID="ListView2" runat="server" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                <ItemTemplate>
                    <div class="col-3">
                    <div class="card">
                        <img
                            title="Titulo prducto"
                            alt="Titulo"
                            class="card-img-top"
                            src="Img/Productos/<%#Eval("Img")%>" />
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <p class="card-text"><%#Eval("Descripcion")%></p>
                            <asp:Button runat="server" Text="Agregar al carrito" CssClass="btn btn-dark" OnClick="btnButton1_Click"  CommandArgument='<%#Eval("Id_zapato")%>' />
                        </div>
              	    </div>
                </div>
                </ItemTemplate>
            </asp:ListView>

            <asp:ListView ID="ListView3" runat="server" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                <ItemTemplate>
                    <div class="col-3">
                    <div class="card">
                        <img
                            title="Titulo prducto"
                            alt="Titulo"
                            class="card-img-top"
                            src="Img/Productos/<%#Eval("Img")%>" />
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <p class="card-text"><%#Eval("Descripcion")%></p>
                            <asp:Button runat="server" Text="Agregar al carrito" CssClass="btn btn-dark" OnClick="btnButton1_Click"  CommandArgument='<%#Eval("Id_zapato")%>' />
                        </div>
              	    </div>
                </div>
                </ItemTemplate>
            </asp:ListView>


            <asp:ListView ID="ListView4" runat="server" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                <ItemTemplate>
                    <div class="col-3">
                    <div class="card">
                        <img
                            title="Titulo prducto"
                            alt="Titulo"
                            class="card-img-top"
                            src="Img/Productos/<%#Eval("Img")%>" />
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <p class="card-text"><%#Eval("Descripcion")%></p>
                            <asp:Button runat="server" Text="Agregar al carrito" CssClass="btn btn-dark" OnClick="btnButton1_Click"  CommandArgument='<%#Eval("Id_zapato")%>' />
                        </div>
              	    </div>
                </div>
                </ItemTemplate>
            </asp:ListView>

            <asp:ListView ID="ListView5" runat="server" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                <ItemTemplate>
                    <div class="col-3">
                    <div class="card">
                        <img
                            title="Titulo prducto"
                            alt="Titulo"
                            class="card-img-top"
                            src="Img/Productos/<%#Eval("Img")%>" />
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <p class="card-text"><%#Eval("Descripcion")%></p>
                            <asp:Button runat="server" Text="Agregar al carrito" CssClass="btn btn-dark" OnClick="btnButton1_Click"  CommandArgument='<%#Eval("Id_zapato")%>' />
                        </div>
              	    </div>
                </div>
                </ItemTemplate>
            </asp:ListView>

            <asp:ListView ID="ListView6" runat="server" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                <ItemTemplate>
                    <div class="col-3">
                    <div class="card">
                        <img
                            title="Titulo prducto"
                            alt="Titulo"
                            class="card-img-top"
                            src="Img/Productos/<%#Eval("Img")%>" />
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <p class="card-text"><%#Eval("Descripcion")%></p>
                            <asp:Button runat="server" Text="Agregar al carrito" CssClass="btn btn-dark" OnClick="btnButton1_Click"  CommandArgument='<%#Eval("Id_zapato")%>' />
                        </div>
              	    </div>
                </div>
                </ItemTemplate>
            </asp:ListView>

            <asp:ListView ID="ListView7" runat="server" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                <ItemTemplate>
                    <div class="col-3">
                    <div class="card">
                        <img
                            title="Titulo prducto"
                            alt="Titulo"
                            class="card-img-top"
                            src="Img/Productos/<%#Eval("Img")%>" />
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <p class="card-text"><%#Eval("Descripcion")%></p>
                            <asp:Button runat="server" Text="Agregar al carrito" CssClass="btn btn-dark" OnClick="btnButton1_Click"  CommandArgument='<%#Eval("Id_zapato")%>' />
                        </div>
              	    </div>
                </div>
                </ItemTemplate>
            </asp:ListView>

            <asp:ListView ID="ListView8" runat="server" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                <ItemTemplate>
                    <div class="col-3">
                    <div class="card">
                        <img
                            title="Titulo prducto"
                            alt="Titulo"
                            class="card-img-top"
                            src="Img/Productos/<%#Eval("Img")%>" />
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <p><%#Eval("Precio") %></p>       <%------> Preguntar a Jonathan como agregar el precio.--%>
                            <p class="card-text"><%#Eval("Descripcion")%></p>
                            <asp:Button runat="server" Text="Agregar al carrito" CssClass="btn btn-dark" OnClick="btnButton1_Click"  CommandArgument='<%#Eval("Id_zapato")%>' />
                        </div>
              	    </div>
                </div>
                </ItemTemplate>
            </asp:ListView>
       </div>
   </form>
    

       
    <script src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
</body>
</html>
