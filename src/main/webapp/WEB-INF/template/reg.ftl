<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0"/>
    <title>${systemName} - 加入微点</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="${base}/static/assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${base}/static/assets/css/style.css">
    <script type="text/javascript" src="${base}/static/assets/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="${base}/static/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${base}/static/assets/js/bootstrap3-validation.js"></script>
    <style type="text/css">
        html, body {
            height: 100%;
        }

        .box {
            background-image: url(${base}/static/assets/img/05.jpg);
            margin: 0 auto;
            position: relative;
            width: 100%;
            height: 100%;
        }

        .login-box {
            width: 100%;
            max-width: 500px;
            height: 400px;
            position: absolute;
            top: 50%;

            margin-top: -200px;
            /*设置负值，为要定位子盒子的一半高度*/

        }

        @media screen and (min-width: 300px) {
            .login-box {
                left: 50%;
                /*设置负值，为要定位子盒子的一半宽度*/
                margin-left: -250px;
            }
        }

        .form {
            width: 100%;
            max-width: 500px;
            height: 275px;
            margin: 25px auto 0px auto;
            padding-top: 25px;
        }

        .login-content {
            height: 430px;
            width: 100%;
            max-width: 700px;
            background-color: #ffffff;
            float: left;
        }

        .input-group {
            margin: 0px 0px 30px 0px !important;
        }

        .form-control,
        .input-group {
            height: 40px;
        }

        .form-group {
            margin-bottom: 0px !important;
        }

        .login-title {
            padding: 10px 10px;
            background-color: #31b0d5;
        }

        .login-title h1 {
            margin-top: 10px !important;
        }

        .login-title small {
            color: #fff;
        }

        .link p {
            line-height: 20px;
            margin-top: 30px;
        }

        .btn-sm {
            padding: 8px 24px !important;
            font-size: 16px !important;
        }
    </style>
    <script type="application/javascript">
        $(function () {
            //1. 简单写法：
            $("#login-form").validation({icon: true});
            //.注册
            $("#login-submit").on('click', function (event) {
                //第一种提示写法
                if ($("#login-form").valid(this) == false) {
                    return false;
                }

            })
        });
    </script>
</head>

<body>
<nav id="tf-menu" class="navbar navbar-default navbar-fixed-top on">
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
                [@navigation_list]
                [#list navigations as navigation]
                <li><a href="${navigation.url}" target="_self">${navigation.name}</a></li>
                [/#list]
                [/@navigation_list]
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
<div class="box overlay">
    <div class="login-box">
        <div class="login-title text-center">
            <h1>
                <small>微点登录</small>
            </h1>
        </div>
        <div class="login-content ">
            <div class="form">

                <div id="messageBox" class="alert alert-error "><button data-dismiss="alert" class="close">×</button>
                    <label id="loginError" class="error">sss</label>
                </div>
                <form action="${base}/a/login" id="login-form" method="post" role="form" >
                    <div class="form-group">
                        <div class="col-xs-12  ">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                <input type="text" id="username" name="username" class="form-control" placeholder="用户名"
                                       check-type="required" required-message="">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12  ">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                <input type="password" id="password" name="password" class="form-control"
                                       placeholder="密码" check-type="required" minlength="6" required-message="">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-12  ">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                <input type="password" id="rpassword" name="rpassword" class="form-control"
                                       placeholder="确认密码" check-type="required" minlength="6" required-message="">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-12  ">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
                                <input type="text" id="phone" name="phone" class="form-control"
                                       placeholder="手机号" check-type="required" minlength="6" required-message="">
                            </div>
                        </div>
                    </div>
                    <div class="form-group form-actions">
                        <div class="col-xs-4 col-xs-offset-4 ">
                            <button type="submit" id="login-submit" class="btn btn-primary">立即注册</button>
                        </div>
                    </div>
                 </form>
            </div>
        </div>
    </div>
</div>
[#include "/include/footer.ftl" /]