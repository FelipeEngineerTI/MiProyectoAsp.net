<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerarInforme.aspx.cs" Inherits="ProyectoTPS.GenerarInforme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
    <head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	  <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SMP &mdash;Terminal Pacifico Sur Valparaíso </title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
    <div id="fh5co-page" >
     <div class="header">
         <div id="fh5co-page">
		<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
		<aside id="fh5co-aside" role="complementary" class="border js-fullheight">
			<h1 id="fh5co-logo"><a href="Default.aspx"><img src="images/logo.png" alt="SMP"></a></h1>
			<nav id="fh5co-main-menu" role="navigation">
				<ul>
					<li class="fh5co-active"><a href="Default.aspx">Inicio</a></li>
					<li><a href="AgregarMantenciones.aspx">Mantenciones</a></li>
                    <li><a href="AgregarSolicitud.aspx">Solicitudes</a></li>
					<li><a href="InfoGruas.aspx">Grúas</a></li>
                    <li><a href="AgregarRecursos.aspx">Recursos</a></li>
                    <li><a href="AgregarEventos.aspx">Eventos</a></li>
                    <li><a href="GenerarInforme.aspx">Generar Informe</a></li>
					<li><a href="Contacto.aspx">Contacto</a></li>
				</ul>
			</nav>
			<div class="fh5co-footer">
				<p><small>&copy; Taller de Proyecto de Software 2019. Todos los derechos reservados.</span> <span>Desarrollado por <a href="http://portales.inacap.cl/" target="_blank">Inacap Valparaíso</a> </span> <span>Distribuido por: <a href="https://portal.tps.cl/" target="_blank">Terminal Pacifico Sur</a></span></small></p>
				<ul>
					<li><a href="#"><i class="icon-facebook"></i></a></li>
					<li><a href="#"><i class="icon-twitter"></i></a></li>
					<li><a href="#"><i class="icon-instagram"></i></a></li>
					<li><a href="#"><i class="icon-linkedin"></i></a></li>
				</ul>
			</div>
		</aside>
             </div>
        </div>
        <div>
            <form id="formGenerar" runat="server">
            <div id="fh5co-main">
			<div class="fh5co-narrow-content">
				<div class="row">
                    <h1>Gastos generados en las mantenciones:</h1>
                <div class="fh5co-narrow-content  animate-box" data-animate-effect="fadeInLeft">
                <div class="form-group">
                    <div class="col-md-4">
						<h4>Recursos Utilizados</h4>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="NombreRecurso" HeaderText="Recurso" SortExpression="NombreRecurso"></asp:BoundField>
                                <asp:BoundField DataField="Stock" HeaderText="Cantidad (Lts)" SortExpression="Stock"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [NombreRecurso], [Stock] FROM [Recurso] ORDER BY [Stock] DESC"></asp:SqlDataSource>
                    </div>
                </div>
                    </div>
                    </div>
                <div class="row">
                <div class="fh5co-narrow-content  animate-box" data-animate-effect="fadeInLeft">
                     <div class="form-group">
                    <div class="col-md-4">
						<h4>Repuestos Utilizados</h4>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                            <Columns>
                                <asp:BoundField DataField="NombreRepuesto" HeaderText="Repuesto" SortExpression="NombreRepuesto"></asp:BoundField>
                                <asp:BoundField DataField="StockRepuesto" HeaderText="Cantidad (Unidad)" SortExpression="StockRepuesto"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [NombreRepuesto], [StockRepuesto] FROM [Repuesto] ORDER BY [StockRepuesto] DESC"></asp:SqlDataSource>
                    </div>
                    </div>
                    </div>
                </div>
                <div class="row">
                <div class="fh5co-narrow-content  animate-box" data-animate-effect="fadeInLeft">
                    <div class="form-group">
                    <div class="col-md-4">
						<h4>Grúas con mayor cantidad de mantenciones</h4>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="IdMaquinaria" DataSourceID="SqlDataSource3">
                            <Columns>
                                <asp:BoundField DataField="NombreMaquinaria" HeaderText="Nombre Maquinaria" SortExpression="NombreMaquinaria"></asp:BoundField>
                                <asp:BoundField DataField="TipoMaquinaria" HeaderText="Tipo Maquinaria" SortExpression="TipoMaquinaria"></asp:BoundField>
                                <asp:BoundField DataField="IdMaquinaria" HeaderText="Mantenciones" ReadOnly="True" InsertVisible="False" SortExpression="IdMaquinaria"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [NombreMaquinaria], [TipoMaquinaria], [IdMaquinaria] FROM [Maquinaria] ORDER BY [IdMaquinaria] DESC"></asp:SqlDataSource>
                    </div>
        </div>
                </div>
				</div>
                <div class="fh5co-narrow-content  animate-box" data-animate-effect="fadeInLeft">
                <div class="form-group">
                    <div class="col-md-4">
                      <asp:LinkButton ID="LinkButton1" href="doc/Informegenerado.docx" runat="server">Generar Informe</asp:LinkButton>
                    </div>
                </div>
			</div>
                </div>
                </div>
              </form>       
			</div>
        </div>
    <!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>
	
	<!-- MAIN JS -->
	<script src="js/main.js"></script> 
</body>
</html>
