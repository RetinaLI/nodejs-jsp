<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/pages/template/jsp/taglibs.jspf"%>
<head>
    <base href="${base}/html/mobile/">
    <link href="${base}/html/mobile/assets/themes/ample-admin/ampleadmin-dark/bootstrap/dist/css/bootstrap.min.css?ver=${v}" rel="stylesheet">
    <link href="${base}/html/mobile/assets/themes/ample-admin/ampleadmin-dark/css/animate.css?ver=${v}" rel="stylesheet">
    <link href="${base}/html/mobile/assets/themes/ample-admin/plugins/bower_components/toast-master/css/jquery.toast.css?ver=${v}" rel="stylesheet">
    <link href="${base}/html/mobile/assets/themes/ample-admin/ampleadmin-dark/css/style.css?ver=${v}" rel="stylesheet">
    <link href="${base}/html/mobile/assets/login/login.css?ver=${v}" rel="stylesheet">
</head>
<body>
    <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div>
    <section id="wrapper" class="login-register">
        <div class="login-box login-sidebar bg-theme-dark">
            <div class="white-box">
                <form class="form-horizontal form-material" id="loginform">
					<input type="hidden" name="loginResult" value="login_mobile" />
                    <a href="javascript:void(0)" class="text-center db"><img src="${base}/html/mobile/assets/images/logo.png" alt="Home" /></a>
                    <div class="form-group m-t-40">
                        <div class="col-xs-12">
                            <input class="form-control" type="text" title = '用户名' name="username" id="username"  required="" placeholder="* 用户名">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <input class="form-control" type="password" title = '密码' name="password" id="password"  required="" placeholder="* 密码">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <input class="form-control" type="ecode" title = '企业代码' name="companyNo" id="companyNo" required="" placeholder="* 企业代码">
                        </div>
                    </div>
                    <div class="form-group captcha-wrapper hide">
                    <div class="col-xs-6">
                      <input class="form-control" type="text" title='验证码' name="captcha" id="captcha" placeholder="* 验证码">
                    </div>
                    <div class="col-xs-4 padding-0 captcha">
                      <img class="" data-url='/captcha.pic'>
                    </div>
                    <div class="col-xs-2 padding-0 captcha-tip">
                      <span>点击刷新</span>
                    </div>
                    </div>
                    <div class="form-group text-center m-t-20">
                        <div class="col-xs-12">
                            <button class="btn btn-info btn-lg btn-block text-uppercase waves-effect waves-light" type="submit" id = "login">登录</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <script src="${base}/html/mobile/assets/themes/ample-admin/plugins/bower_components/jquery/dist/jquery.min.js?ver=${v}"></script>
    <script src="${base}/html/mobile/assets/themes/ample-admin/plugins/bower_components/toast-master/js/jquery.toast.js?ver=${v}"></script>
    <script src="${base}/html/mobile/assets/login/login.js?ver=${v}"></script>
</body>
