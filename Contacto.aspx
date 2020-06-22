﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="ProyectoTPS.Contacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	  <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SMP &mdash;Contacto---SMP </title>
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
      <div id="fh5co-page">
      <div> 
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
		<div id="fh5co-main">

			<div id="map"></div>	
            <script>
        function initMap() {
            var myLatLng = { lat: -33.032902782048446, lng: -71.58930391073227 };

            // Create a map object and specify the DOM element for display.
            var map = new google.maps.Map(document.getElementById('map'), {
                center: myLatLng,
                scrollwheel: false,
                zoom: 15
            });

            // Create a marker and set its position.
            var marker = new google.maps.Marker({
                map: map,
                position: myLatLng,
                title: 'INACAP Valparaíso'
            });
        }

    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDd5JYJDyiA1RwNMlQar5U4GdEqyvYTCc0&callback=initMap"
        async defer></script>

			<div class="fh5co-more-contact">
				<div class="fh5co-narrow-content">
					<div class="row">
						<div class="col-md-4">
							<div class="fh5co-feature fh5co-feature-sm animate-box" data-animate-effect="fadeInLeft">
								<div class="fh5co-icon">
									<i class="icon-envelope-o"></i>
								</div>
								<div class="fh5co-text">
									<p><a href="#">smp@inacapvalparaiso.cl</a></p>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="fh5co-feature fh5co-feature-sm animate-box" data-animate-effect="fadeInLeft">
								<div class="fh5co-icon">
									<i class="icon-map-o"></i>
								</div>
								<div class="fh5co-text">
									<p>Avenida España 2250, Valparaíso</p>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="fh5co-feature fh5co-feature-sm animate-box" data-animate-effect="fadeInLeft">
								<div class="fh5co-icon">
									<i class="icon-phone"></i>
								</div>
								<div class="fh5co-text">
									<p><a href="tel://">(32) 24612 00</a></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="fh5co-narrow-content animate-box" data-animate-effect="fadeInLeft">
				
				<div class="row">
					<div class="col-md-4">
						<h1>Reportar Errores en el SMP</h1>
					</div>
				</div>
				 <form id="form1" runat="server">
					<div class="row">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" class="form-control" placeholder="Nombre">
									</div>
									<div class="form-group">
										<input type="text" class="form-control" placeholder="Correo">
									</div>
									<div class="form-group">
										<input type="text" class="form-control" placeholder="Telefono">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<textarea name="" id="message" cols="30" rows="7" class="form-control" placeholder="Mensaje o Error"></textarea>
									</div>
									<div class="form-group">
										<input type="submit" class="btn btn-primary btn-md" value="Enviar Reporte">
									</div>
								</div>
								
							</div>
						</div>
						
					</div>
				</form>
			</div>

		</div>
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
