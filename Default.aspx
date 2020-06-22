<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProyectoTPS.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="fh5co-main">
			<div class="fh5co-narrow-content">
				<h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft">Bienvenido al SMP:  <asp:LoginName ID="LoginName1" runat="server" /><br /> <span>Funcionalidades del Sistema</span></h2>
				<div class="row animate-box" data-animate-effect="fadeInLeft">
					<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 work-item">
						<a href="GenerarInforme.aspx">
							<img src="images/work_1.jpg" alt="" class="img-responsive">
							<h3 class="fh5co-work-title">Generar Informe</h3>
							<p></p>
						</a>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 work-item">
						<a href="InfoGruas.aspx">
							<img src="images/work_2.jpg" alt="" class="img-responsive">
							<h3 class="fh5co-work-title">Info Gruas</h3>
							<p></p>
						</a>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 work-item">
						<a href="AgregarMantenciones.aspx">
							<img src="images/work_3.jpg" alt="" class="img-responsive">
							<h3 class="fh5co-work-title">Mantenciones</h3>
							<p></p>
						</a>
					</div>
					<div class="clearfix visible-md-block"></div>
					<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 work-item">
						<a href="AgregarEventos.aspx">
							<img src="images/work_4.png" alt="" class="img-responsive">
							<h3 class="fh5co-work-title">Eventos</h3>
							<p></p>
						</a>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 work-item">
						<a href="AgregarSolicitud.aspx">
							<img src="images/work_5.png" alt="" class="img-responsive">
							<h3 class="fh5co-work-title">Solicitudes</h3>
							<p></p>
						</a>
					</div>
                    <div class="clearfix visible-sm-block"></div>
					<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 work-item">
						<a href="AgregarRecursos.aspx">
							<img src="images/work_6.png" alt="" class="img-responsive">
							<h3 class="fh5co-work-title">Recursos</h3>
							<p></p>
						</a>
					</div>
					<div class="clearfix visible-md-block"></div>
				</div>
			</div>
			<div class="fh5co-testimonial" >
				<div class="fh5co-narrow-content">
					<div class="owl-carousel-fullwidth animate-box" data-animate-effect="fadeInLeft">
		            <div class="item">
		            	<figure>
		            		<img src="images/TPS.png" alt="">
		            	</figure>
		              	<p class="text-center quote">&rdquo; Nuevas grúas pórtico de 62 mts de altura y capacidad de levante de 65 toneladas, aumento de 18% de capacidad operativa gracias a inversiones.  &rdquo;<cite class="author">TPS en cifras</cite></p>
		            </div>
		            <div class="item">
		            	<figure>
		            		<img src="images/TPS.png" alt="">
		            	</figure>
		              	<p class="text-center quote">&ldquo;Aumento de 1.8% en la transferencia de carga contenedorizada entre 2017 y 2018. 78% de sindicalización de trabajadores en el año 2018. &rdquo;<cite class="author">TPS en cifras</cite></p>
		            </div>
		            <div class="item">
		            	<figure>
		            		<img src="images/TPS.png" alt="">
		            	</figure>
		              	<p class="text-center quote">&ldquo; 424 trabajadores contratados, 58% de proveedores locales que significan el 81% de las compras de TPS, compra de 3 nuevas gruas, para un total de 15 en patio.  &rdquo;<cite class="author">TPS en cifras</cite></p>
		            </div>
		          </div>
				</div>
			</div>
			<div class="fh5co-narrow-content">
				<h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft">Objetivos del <span>SMP</span></h2>
				<div class="row">
					<div class="col-md-6">
						<div class="fh5co-feature animate-box" data-animate-effect="fadeInLeft">
							<div class="fh5co-icon">
								<i class="icon-strategy"></i>
							</div>
							<div class="fh5co-text">
								<h3>Eficiencia</h3>
								<p>Lograr una mayor eficiencia en las mantenciones de las grúas portuarias.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="fh5co-feature animate-box" data-animate-effect="fadeInLeft">
							<div class="fh5co-icon">
								<i class="icon-telescope"></i>
							</div>
							<div class="fh5co-text">
								<h3>Reducir Tiempos</h3>
								<p>Reducir los tiempos de las mantenciones, para aumentar la producción de la empresa.</p>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="fh5co-feature animate-box" data-animate-effect="fadeInLeft">
							<div class="fh5co-icon">
								<i class="icon-circle-compass"></i>
							</div>
							<div class="fh5co-text">
								<h3>Información</h3>
								<p>Dar información oportuna para realizar las mantenciones.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="fh5co-feature animate-box" data-animate-effect="fadeInLeft">
							<div class="fh5co-icon">
								<i class="icon-tools-2"></i>
							</div>
							<div class="fh5co-text">
								<h3>Solicitudes</h3>
								<p>Si existe alguna falla o mal funcionamiento, el operario puede solicitar un mantenimiento.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="fh5co-counters" style="background-image: url(images/hero.jpg);" data-stellar-background-ratio="0.5" id="counter-animate">
				<div class="fh5co-narrow-content animate-box">
					<div class="row" >
						<div class="col-md-4 text-center">
							<span class="fh5co-counter js-counter" data-from="0" data-to="74" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">Grúas en Operación</span>
						</div>
						<div class="col-md-4 text-center">
							<span class="fh5co-counter js-counter" data-from="0" data-to="50" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">Trabajadores en Operación</span>
						</div>
						<div class="col-md-4 text-center">
							<span class="fh5co-counter js-counter" data-from="0" data-to="4272" data-speed="5000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">Horas de Operación 2019</span>
						</div>
					</div>
				</div>
			</div>
			<div class="fh5co-cards">
				<div class="fh5co-narrow-content">
					<h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft">Para qué sirve el SMP?</h2>

					<div class="fh5co-flex-wrap">
						<div class="fh5co-card animate-box" data-animate-effect="fadeInLeft">
							<h5>Operación</h5>
							<p>Este servicio será útil para todo aquel que manipule grúas y sea parte del trabajo de movimiento de carga pesada en TPS Valparaíso. Esta persona si bien hará su trabajo cotidiano, pero necesitará de igual manera obtener información al instante, incluso en altura y movimiento, por lo que este software le vendría bastante bien.</p>
							<p><a href="#" class="btn btn-md btn-primary">Aprender Más</a></p>
						</div>
						<div class="fh5co-card animate-box" data-animate-effect="fadeInLeft">
							<h5>Administración</h5>
							<p>El sistema generara un informe con la información que el área administrativa necesite acerca de las mantenciones, para tomar mejores decisiones. También mejorar la comunicación entre el área de operación con el área de mantenciones al comunicar las solicitudes de mantenimiento.</p>
							<p><a href="#" class="btn btn-md btn-primary">Aprender Más</a></p>
						</div>

					</div>	
					
				</div>
			</div>

			<div class="fh5co-narrow-content">
				<div class="row">
					<div class="col-md-4 animate-box" data-animate-effect="fadeInLeft">
						<h1 class="fh5co-heading-colored">Descripción del Sistema</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 animate-box" data-animate-effect="fadeInLeft">
						<p class="fh5co-lead">El SMP, es un sistema de mantención preventiva, que ayudara a mejorar los procesos de las mantenciones de las gruas portuarias.</p>
						<p><a href="#" class="btn btn-primary btn-outline">Aprender Más</a></p>
					</div>
					<div class="col-md-7 col-md-push-1">
						<div class="row">
							<div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
								<p>El sistema entregara información de las mantenciones, ademas de realizar tareas enfocadas en mejorar los tiempos de las mantenciones en las gruas portuarias, en la empresa Terminal Pacifico Sur Valparaíso.</p>
							</div>
							<div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
								<p>Existen 6 funcionalidades, Generar informes, mostrar la información de las gruas,registrar trabajos eventuales,calcular las siguientes mantenciones,solicitudes de mantenimiento entre otras.</p>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
</asp:Content>
