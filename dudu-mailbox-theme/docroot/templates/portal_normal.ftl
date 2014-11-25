<!DOCTYPE html>
<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<script type="text/javascript" src="${javascript_folder}/jquery.js" charset="utf-8"></script>
	<script type="text/javascript" src="${javascript_folder}/bootstrap.js" charset="utf-8"></script>
	<script type="text/javascript" src="${javascript_folder}/dudu.theme.js" charset="utf-8"></script>
	<script type="text/javascript" src="${javascript_folder}/switchery.js" charset="utf-8"></script>
	${theme.include(top_head_include)}
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
</head>

<body class="${css_class}">

<a href="#main-content" id="skip-to-content"><@liferay.language key="skip-to-content" /></a>

${theme.include(body_top_include)}

<div class="container-fluid" id="wrapper">
	<header id="banner" role="banner">
		<div id="heading">
			<div class="dd-site-title">
				<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
					<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
				</a>
				<div class="dd-site-info">
					<div class="dd-site-company">Trường Đại học Cần Thơ</div>
					<div class="dd-site-name">Hệ thống quản lý công văn</div>
					<!--<#if show_site_name>
						<span class="site-name" title="<@liferay.language_format objects="${site_name}" key="go-to-x" />">
							${site_name}
						</span>
					</#if>-->
				</div><!--End dd-site-infor-->
			</div>
				<!--<h1 class="page-title">
					<span>${the_title}</span>
				</h1>-->
				<!--<#if show_site_name>
					<span class="site-name" title="<@liferay.language_format objects="${site_name}" key="go-to-x" />">
						${site_name}
					</span>
				</#if>-->
			<ul class="pull-right banner-heading-right-control">
				<#if has_navigation || is_signed_in>
					<li><#include "${full_templates_path}/navigation.ftl" /></li>
				</#if>
				
				<#if !is_signed_in>
					<li><a href="${sign_in_url}" data-redirect="${is_login_redirect_required?string}" id="sign-in" rel="nofollow">${sign_in_text}</a></li>
				</#if>
				<#if is_signed_in>
					<li><@liferay.dockbar /></li>
				</#if>
			</ul>
		

		
		<div class='clearfix'></div>
	</header>

	<div id="content">
		<!--<nav id="breadcrumbs"><@liferay.breadcrumbs /></nav>-->

		<#if selectable>
			${theme.include(content_include)}
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			${theme.wrapPortlet("portlet.ftl", content_include)}
		</#if>
	</div>

	<footer id="footer" role="contentinfo">
		<!--<p class="powered-by">
			<@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>
		</p>-->
		<div class="align-center">
			<p id="footer-company-name">Đại học Cần Thơ <span id="footer-company-subtitle">Can Tho University</span></p>
			<p>Khu II - Đường 3/2 - Quận Ninh Kiều - TP. Cần Thơ<br>
			Điện thoại: (84-0710) 3832663 - (84-0710) 3838474 | 
			Fax: (84-0710) 3838474 |
			Email: dhct@ctu.edu.vn</p>
		</div>
	</footer>
</div>

${theme.include(body_bottom_include)}

${theme.include(bottom_include)}

</body>

</html>