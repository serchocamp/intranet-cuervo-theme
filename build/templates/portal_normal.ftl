<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>

	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>${the_title} - ${company_name}</title>

	<@liferay_util["include"] page=top_head_include />

</head>

<body class="${css_class}">

	<@liferay_ui["quick-access"] contentId="#main-content" />

	<@liferay_util["include"] page=body_top_include />

	<@liferay.control_menu />

	<div id="wrapper">
		<section class="seccion-contenedor" data-version="10">

			<header id="banner" role="banner">
				<div id="heading">
				<!--
				<h1 class="site-title">
					<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
						<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
					</a>

					<#if show_site_name>
						<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
							${site_name}
						</span>
					</#if>
				</h1>
				-->

	            	<div class="barra-utilerias">
		            	<div class="container">
			                <nav class="navbar navbar-dark">
			                    <a href="${site_default_url}">
			                        <img src="${site_logo}" alt="" class="img-fluid logotipo">
			                    </a>
			                    <div class="utilerias d-none d-md-block">
			                       <!-- <a href="#" class="d-inline-block usuario">
			                            <img src="img/user.png" alt="" class="img-fluid user-img">
			                            <i class="fas fa-chevron-down d-lg-none"></i>
			                            <span class="utileria-usuario d-lg-inline">Hola, 1234567890</span>
			                        </a>-->
			                           
			                        <#if !is_signed_in>
			                        <div class="d-inline-block usuario">
										<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
						 			</div>
									<#else>
									<div id="personal" class="d-inline-block usuario"><@liferay.user_personal_bar /></div>
									</#if>
			                        
			                        <form class="form-inline d-inline-block busqueda">
			                         <!--   <input class="form-control buscar" type="text" placeholder="Buscar" aria-label="Buscar">
			                            <a href="#">
			                                <i class="fas fa-search"></i>
			                            </a>
			                        -->
			                        	<@liferay.search />

			                        </form>
			                    </div>
			                    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            		<i class="fas fa-bars"></i>                          
			                    </button>
			                </nav>
			            </div>
			        </div>

					<#if has_navigation && is_setup_complete>
						 <#include "${full_templates_path}/navigation.ftl" />
					</#if>

				</div>
			</header>

			<section id="content">
				<h1 class="hide-accessible">${the_title}</h1>

				<#if selectable>
					<@liferay_util["include"] page=content_include />
				<#else>
					${portletDisplay.recycle()}

					${portletDisplay.setTitle(the_title)}

					<@liferay_theme["wrap-portlet"] page="portlet.ftl">
						<@liferay_util["include"] page=content_include />
					</@>
				</#if>
			</section>
			<!--
			<footer id="footer" role="contentinfo">
				<p class="powered-by">
					<@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>
				</p>
			</footer>
			-->
			<footer id="footer" role="contentinfo" class="piePagina mt-50">
                <div class="container">
                    <div class="row franja-logo">
                        <div class="col-md-12 piePagina-logo text-lg-left">
                            <img src="img/logotipo.png" alt="" class="img-fluid logotipo">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 col-lg-3">
                            <h4 class="titulo">Ciudad de México</h4>
                            <p>
                                Guillermo Gonzales Camarena No. 800-4<br>
                                 Alvaro Obregon, Santa Fe, CP 01210<br>
                                 México City, México
                            </p>
                            <p>
                                55 5258 7000<br>
                                correo@cuervo.com
                            </p>
                        </div>
                        <div class="col-6 col-lg-3">
                            <h4 class="titulo">Guadalajara</h4>
                            <p>
                                Guillermo Gonzales Camarena No. 800-4<br>
                                 Alvaro Obregon, Santa Fe, CP 01210<br>
                                 México City, México
                            </p>
                            <p>
                                55 5258 7000<br>
                                correo@cuervo.com
                            </p>
                        </div>
                        <div class="col-6 col-lg-3">
                            <h4 class="titulo">Monterrey</h4>
                            <p>
                                Guillermo Gonzales Camarena No. 800-4<br>
                                 Alvaro Obregon, Santa Fe, CP 01210<br>
                                 México City, México
                            </p>
                            <p>
                                55 5258 7000<br>
                                correo@cuervo.com
                            </p>
                        </div>
                        <div class="col-6 col-lg-3">
                            <h4 class="titulo">Tijuana</h4>
                            <p>
                                Guillermo Gonzales Camarena No. 800-4<br>
                                 Alvaro Obregon, Santa Fe, CP 01210<br>
                                 México City, México
                            </p>
                            <p>
                                55 5258 7000<br>
                                correo@cuervo.com
                            </p>
                        </div>
                    </div>
                    <div class="row copyright text-lg-left">
                        <div class="col-md-12">
                            <p>© Copyright 2019 Tequila Cuervo La Rojeña, S.A. de C.V.</p>
                        </div>
                    </div>
                </div>            
            </footer>

		</section>
	</div>

	<@liferay_util["include"] page=body_bottom_include />

	<@liferay_util["include"] page=bottom_include />

	<script src="${javascript_folder}/popper.min.js" type="text/javascript"></script>
	<script src="${javascript_folder}/owl.carousel.min.js" type="text/javascript"></script>
	<script src="${javascript_folder}/general.onload.js" type="text/javascript"></script>
	<!--<script src="${javascript_folder}/bootstrap.min.js" type="text/javascript"></script>-->

</body>

</html>