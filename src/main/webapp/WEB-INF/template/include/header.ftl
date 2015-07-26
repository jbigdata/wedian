<meta charset="utf-8">
<!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
      content="">
<meta name="keywords"
      content="we-dian,微点">
<meta name="author" content="we-dian.com">

<!-- Favicons
================================================== -->
<link rel="shortcut icon" href="${base}/static/assets/img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="${base}/static/assets/img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="${base}/static/assets/img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="${base}/static/assets/img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="${base}/static/assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${base}/static/assets/fonts/font-awesome/css/font-awesome.css">

<!-- Slider
================================================== -->
<link href="${base}/static/assets/css/owl.carousel.css" rel="stylesheet" media="screen">
<link href="${base}/static/assets/css/owl.theme.css" rel="stylesheet" media="screen">

<!-- Stylesheet
================================================== -->
<link rel="stylesheet" type="text/css" href="${base}/static/assets/css/style.css">
<link rel="stylesheet" type="text/css" href="${base}/static/assets/css/responsive.css">


<script type="text/javascript" src="${base}/static/assets/js/modernizr.custom.js"></script>
<!--[if lt IE 9]>
<script src="${base}/static/assets/js/html5shiv.min.js"></script>
<script src="${base}/static/assets/js/respond.min.js"></script>
<![endif]-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<#--<script src="${base}/static/ckfinder/plugins/gallery/colorbox/jquery.min.js"></script>-->
<script type="text/javascript" src="${base}/static/assets/js/jquery.1.11.1.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script type="text/javascript" src="${base}/static/assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${base}/static/assets/js/SmoothScroll.js"></script>
<script type="text/javascript" src="${base}/static/assets/js/jquery.isotope.js"></script>

<script src="${base}/static/assets/js/owl.carousel.js"></script>

<!-- Javascripts
================================================== -->
<script type="text/javascript" src="${base}/static/assets/js/main.js"></script>
<!--menu-->
<link rel="stylesheet" type="text/css" href="${base}/static/assets/css/ace.min.css">
<script type="text/javascript" src="${base}/static/assets/js/ace.min.js"></script>
</head>
<body>
<!-- Navigation
==========================================-->
<nav id="tf-menu" class="navbar navbar-default  on">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">${systemName}<br>we-dian.com</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="${base}/index.html" class="page-scroll">首页</a></li>
                    <@navigation_list>
                    <#list navigations as navigation>
                    <li><a href="${base}/${navigation.url}" target="_self">${navigation.name}</a></li>
                    </#list>
                    </@navigation_list>
        <#if user.id??>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">我的微点<b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="#"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> 个人信息</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-list" aria-hidden="true"></span> 博客管理</a></li>
                    <li><a href="${base}/a/"><span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span> 后台管理</a></li>
                    <li class="divider"></li>
                    <li><a href="${base}/a/logout"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span> 修改密码</a></li>
                    <li><a href="${base}/a/logout"><span class="glyphicon glyphicon-off" aria-hidden="true"></span> 安全退出</a></li>

                </ul>
            </li>
        <#else>
            <li><a href="${base}/login.shtml"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> 登录</a></li>
        </#if>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
