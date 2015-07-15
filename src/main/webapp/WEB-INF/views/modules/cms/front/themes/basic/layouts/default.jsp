<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
	<title><sitemesh:title default="欢迎光临"/> - ${site.title} - Powered By JeeSite</title>
	<%@include file="/WEB-INF/views/modules/cms/front/include/head.jsp" %>
	<!-- Baidu tongji analytics --><script>var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="//hm.baidu.com/hm.js?82116c626a8d504a5c0675073362ef6f";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s);})();</script>
	<sitemesh:head/>
</head>
<body>
<!--=== Style Switcher ===-->
<%--<i class="style-switcher-btn style-switcher-btn-option icon-cogs"></i>--%>
<%--<div class="style-switcher style-switcher-inner">--%>
	<%--<div class="theme-close"><i class="icon-remove"></i></div>--%>
	<%--<div class="theme-heading">Theme Colors</div>--%>
	<%--<ul class="unstyled">--%>
		<%--<li class="theme-default theme-active" data-style="default" data-header="dark"></li>--%>
		<%--<li class="theme-blue" data-style="blue" data-header="dark"></li>--%>
		<%--<li class="theme-orange" data-style="orange" data-header="dark"></li>--%>
		<%--<li class="theme-red" data-style="red" data-header="dark"></li>--%>
		<%--<li class="theme-light" data-style="light" data-header="dark"></li>--%>
	<%--</ul>--%>
<%--</div><!--/style-switcher-->--%>
<!--=== End Style Switcher ===-->

<!--=== Top ===-->
<div class="top">
	<div class="container">
		<div class="row-fluid">
			<ul class="loginbar inline">
				<li><a href="mailto:info@anybiz.com"><i class="icon-envelope-alt"></i> info@anybiz.com</a></li>
				<li><a><i class="icon-phone-sign"></i> 010 4202 2656</a></li>
				<li><a href="${pageContext.request.contextPath}${fns:getAdminPath()}"><i class="icon-user"></i> 登录</a></li>
			</ul>
		</div>
	</div><!--/container-->
</div><!--/top-->
<!--=== End Top ===-->

<!--=== Header ===-->
<div class="header">
	<div class="container">
		<!-- Logo -->
		<div class="logo">
			<c:choose>
				<c:when test="${not empty site.logo}">
					<img alt="${site.title}" src="${site.logo}" class="container" onclick="location='${ctx}/index-${site.id}${fns:getUrlSuffix()}'">
				</c:when>
				<c:otherwise><a class="brand" href="${ctx}/index-${site.id}${fns:getUrlSuffix()}">${site.title}</a></c:otherwise>
			</c:choose>
		</div><!-- /logo -->

		<!-- Menu -->
		<div class="navbar">
			<div class="navbar-inner">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a><!-- /nav-collapse -->
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li>
							 <a href="${ctx}/index-1${fns:getUrlSuffix()}">${site.id eq '1'?'首　 页':'返回主站'}
							</a>
						</li>
						<c:forEach items="${fnc:getMainNavList(site.id)}" var="category" varStatus="status"><c:if test="${status.index lt 6}">
							<c:set var="menuCategoryId" value=",${category.id},"/>
							<li class="${requestScope.category.id eq category.id||fn:indexOf(requestScope.category.parentIds,menuCategoryId) ge 1?'active':''}"><a href="${category.url}" target="${category.target}">${category.name}</a></li>
						</c:if>
						</c:forEach>
						<%--<li>--%>
							<%--<a href="" class="dropdown-toggle" data-toggle="dropdown">Pages--%>
								<%--<b class="caret"></b>--%>
							<%--</a>--%>
							<%--<ul class="dropdown-menu">--%>
								<%--<li><a href="page_about.html">About Us</a></li>--%>
								<%--<li><a href="page_services.html">Services</a></li>--%>
								<%--<li><a href="page_pricing.html">Pricing</a></li>--%>
								<%--<li><a href="page_coming_soon.html">Coming Soon</a></li>--%>
								<%--<li><a href="page_faq.html">FAQs</a></li>--%>
								<%--<li><a href="page_search.html">Search Result</a></li>--%>
								<%--<li><a href="page_gallery.html">Gallery</a></li>--%>
								<%--<li><a href="page_registration.html">Registration</a></li>--%>
								<%--<li><a href="page_login.html">Login</a></li>--%>
								<%--<li><a href="page_404.html">404</a></li>--%>
								<%--<li><a href="page_clients.html">Clients</a></li>--%>
								<%--<li><a href="page_privacy.html">Privacy Policy</a></li>--%>
								<%--<li><a href="page_terms.html">Terms of Service</a></li>--%>
								<%--<li><a href="page_column_left.html">2 Columns (Left)</a></li>--%>
								<%--<li><a href="page_column_right.html">2 Columns (Right)</a></li>--%>
							<%--</ul>--%>
							<%--<b class="caret-out"></b>--%>
						<%--</li>--%>
						<%--<li>--%>
							<%--<a href="" class="dropdown-toggle" data-toggle="dropdown">Features--%>
								<%--<b class="caret"></b>--%>
							<%--</a>--%>
							<%--<ul class="dropdown-menu">--%>
								<%--<li><a href="feature_grid.html">Grid Layout</a></li>--%>
								<%--<li><a href="feature_typography.html">Typography</a></li>--%>
								<%--<li><a href="feature_thumbnail.html">Thumbnails</a></li>--%>
								<%--<li><a href="feature_component.html">Components</a></li>--%>
								<%--<li><a href="feature_navigation.html">Navigation</a></li>--%>
								<%--<li><a href="feature_table.html">Tables</a></li>--%>
								<%--<li><a href="feature_form.html">Forms</a></li>--%>
								<%--<li><a href="feature_icons.html">Icons</a></li>--%>
								<%--<li><a href="feature_button.html">Buttons</a></li>--%>
							<%--</ul>--%>
							<%--<b class="caret-out"></b>--%>
						<%--</li>--%>
						<%--<li>--%>
							<%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">Portfolio--%>
								<%--<b class="caret"></b>--%>
							<%--</a>--%>
							<%--<ul class="dropdown-menu">--%>
								<%--<li><a href="portfolio.html">Portfolio</a></li>--%>
								<%--<li><a href="portfolio_item.html">Portfolio Item</a></li>--%>
								<%--<li><a href="portfolio_2columns.html">Portfolio 2 Columns</a></li>--%>
								<%--<li><a href="portfolio_3columns.html">Portfolio 3 Columns</a></li>--%>
								<%--<li><a href="portfolio_4columns.html">Portfolio 4 Columns</a></li>--%>
							<%--</ul>--%>
							<%--<b class="caret-out"></b>--%>
						<%--</li>--%>
						<%--<li>--%>
							<%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog--%>
								<%--<b class="caret"></b>--%>
							<%--</a>--%>
							<%--<ul class="dropdown-menu">--%>
								<%--<li><a href="blog.html">Blog</a></li>--%>
								<%--<li><a href="blog_item.html">Blog Item</a></li>--%>
								<%--<li><a href="blog_left_sidebar.html">Blog Left Sidebar</a></li>--%>
								<%--<li><a href="blog_item_left_sidebar.html">Blog Item Left Sidebar</a></li>--%>
							<%--</ul>--%>
							<%--<b class="caret-out"></b>--%>
						<%--</li>--%>
						<%--<li>--%>
							<%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">Contact--%>
								<%--<b class="caret"></b>--%>
							<%--</a>--%>
							<%--<ul class="dropdown-menu">--%>
								<%--<li><a href="page_contact.html">Contact Default</a></li>--%>
								<%--<li><a href="page_contact1.html">Contact Boxed Map</a></li>--%>
							<%--</ul>--%>
							<%--<b class="caret-out"></b>--%>
						<%--</li>--%>
						<li><a class="search search-nav"><i class="icon-search search-btn"></i></a></li>
					</ul>
					<div class="search-open search-open-inner">
						<div class="input-append">
							<form   action="${ctx}/search" method="get" />
							<input type="text" class="span3" placeholder="输入搜索关键字" />
							<button type="submit" type="text" name="q" maxlength="20"    value="${q}" class="btn-u">搜索</button>
							</form>
						</div>
					</div>
				</div><!-- /nav-collapse -->
			</div><!-- /navbar-inner -->
		</div><!-- /navbar -->
	</div><!-- /container -->
</div><!--/header -->
<!--=== End Header ===-->

	 <sitemesh:body/>

	<!--=== Footer ===-->
	<div class="footer">
		<div class="container">
			<div class="row-fluid">
				<div class="span4">
					<!-- About -->
					<div class="headline"><h3>关于我们</h3></div>
					<p class="margin-bottom-25">Unify is an incredibly beautiful responsive Bootstrap Template for corporate and creative professionals.</p>

					<!-- Monthly Newsletter -->
					<div class="headline"><h3>动态</h3></div>
					<p>Subscribe to our newsletter and stay up to date with the latest news and deals!</p>
					<form class="form-inline" />
					<div class="input-append">
						<input type="text" placeholder="Email Address" class="input-medium" />
						<button class="btn-u">发送邮件</button>
					</div>
					</form>
				</div><!--/span4-->

				<div class="span4">
					<div class="posts">
						<div class="headline"><h3>最新留言</h3></div>
						<dl class="dl-horizontal">
							<dt><a href="#"><img src="${ctxStatic}/assets/img/sliders/elastislide/6.jpg" alt="" /></a></dt>
							<dd>
								<p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p>
							</dd>
						</dl>
						<dl class="dl-horizontal">
							<dt><a href="#"><img src="${ctxStatic}/assets/img/sliders/elastislide/10.jpg" alt="" /></a></dt>
							<dd>
								<p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p>
							</dd>
						</dl>
						<dl class="dl-horizontal">
							<dt><a href="#"><img src="${ctxStatic}/assets/img/sliders/elastislide/11.jpg" alt="" /></a></dt>
							<dd>
								<p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p>
							</dd>
						</dl>
					</div>
				</div><!--/span4-->

				<div class="span4">
					<!-- Monthly Newsletter -->
					<div class="headline"><h3>联系我们</h3></div>
					<address>
						25, Lorem Lis Street, Orange <br />
						California, US <br />
						Phone: 800 123 3456 <br />
						Fax: 800 123 3456 <br />
						Email: <a href="mailto:info@anybiz.com" class="">info@anybiz.com</a>
					</address>

					<!-- Stay Connected -->
					<div class="headline"><h3>分享</h3></div>
					<ul class="social-icons">
						<li><a href="#" data-original-title="Feed" class="social_rss"></a></li>
						<li><a href="#" data-original-title="Facebook" class="social_facebook"></a></li>
						<li><a href="#" data-original-title="Twitter" class="social_twitter"></a></li>
						<li><a href="#" data-original-title="Goole Plus" class="social_googleplus"></a></li>
						<li><a href="#" data-original-title="Pinterest" class="social_pintrest"></a></li>
						<li><a href="#" data-original-title="Linkedin" class="social_linkedin"></a></li>
						<li><a href="#" data-original-title="Vimeo" class="social_vimeo"></a></li>
					</ul>
				</div><!--/span4-->
			</div><!--/row-fluid-->
		</div><!--/container-->
	</div><!--/footer-->
	<!--=== End Footer ===-->

	<!--=== Copyright ===-->
	<div class="copyright">
		<div class="container">
			<div class="row-fluid">
				<div class="span8">
					<p>${site.copyright}</p>
				</div>
				<div class="span4">
					<a href="index.html"><img id="logo-footer" src="${ctxStatic}/assets/img/logo2-default.png" class="pull-right" alt="" /></a>
				</div>
			</div><!--/row-fluid-->
		</div><!--/container-->
	</div><!--/copyright-->
	<!--=== End Copyright ===-->
</body>
</html>