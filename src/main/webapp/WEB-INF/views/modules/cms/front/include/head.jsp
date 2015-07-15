<%@ page contentType="text/html;charset=UTF-8" %><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" /><meta http-equiv="Pragma" content="no-cache" /><meta http-equiv="Expires" content="0" />
<meta name="author" content="http://thinkgem.iteye.com"/><meta http-equiv="X-UA-Compatible" content="IE=7,IE=9,IE=10" />
<script src="${ctxStatic}/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${ctxStatic}/jquery/jquery-migrate-1.1.1.min.js" type="text/javascript"></script>
<c:if test="${site.theme eq 'basic'}">

	<!-- CSS Global Compulsory-->
	<link rel="stylesheet" href="${ctxStatic}/assets/plugins/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${ctxStatic}/assets/css/style.css" />
	<link rel="stylesheet" href="${ctxStatic}/assets/css/headers/header2.css" />
	<link rel="stylesheet" href="${ctxStatic}/assets/plugins/bootstrap/css/bootstrap-responsive.min.css" />
	<link rel="stylesheet" href="${ctxStatic}/assets/css/style_responsive.css" />
	<link rel="shortcut icon" href="favicon.ico" />
	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="${ctxStatic}/assets/plugins/font-awesome/css/font-awesome.css" />
	<link rel="stylesheet" href="${ctxStatic}/assets/plugins/flexslider/flexslider.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="${ctxStatic}/assets/plugins/parallax-slider/css/parallax-slider.css" type="text/css" />
	<link rel="stylesheet" href="${ctxStatic}/assets/plugins/bxslider/jquery.bxslider.css" />
	<!-- CSS Theme -->
	<link rel="stylesheet" href="${ctxStatic}/assets/css/themes/default.css" id="style_color" />
	<link rel="stylesheet" href="${ctxStatic}/assets/css/themes/headers/default.css" id="style_color-header-2" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="${ctxStatic}/assets/js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript" src="${ctxStatic}/assets/js/modernizr.custom.js"></script>
	<script type="text/javascript" src="${ctxStatic}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="${ctxStatic}/assets/plugins/flexslider/jquery.flexslider-min.js"></script>
	<script type="text/javascript" src="${ctxStatic}/assets/plugins/parallax-slider/js/modernizr.js"></script>
	<script type="text/javascript" src="${ctxStatic}/assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
	<script type="text/javascript" src="${ctxStatic}/assets/plugins/bxslider/jquery.bxslider.js"></script>
	<script type="text/javascript" src="${ctxStatic}/assets/plugins/back-to-top.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="${ctxStatic}/assets/js/app.js"></script>
	<script type="text/javascript" src="${ctxStatic}/assets/js/pages/index.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			App.initSliders();
			App.initBxSlider1();
			Index.initParallaxSlider();
		});
	</script>
<!--[if lt IE 9]>
<script src="${ctxStatic}/assets/js/respond.js"></script>
<![endif]-->

</c:if>