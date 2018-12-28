<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/pages/template/jsp/taglibs.jspf"%>
<head>
<style type="text/css">
.index {
	background: url(../../html/login/skin/loginBackGround_construction.jpg)
		center center no-repeat;
	height: 100%;
}

.index .logo .logo_div img {
	width: 600px;
	height: 159px;
	filter: alpha(opacity = 50);
	-moz-opacity: 0.5;
	-khtml-opacity: 0.5;
}

.index .logo {
	height: 9px;
}

.login-form {
	position: fixed;
	bottom: 10%;
	z-index: 20;
}

#contenter .logo-construction {
	height: 16%;
	background: url(../../html/login/skin/logo_construction.png) center
		center no-repeat;
	background-size: contain;
	position: absolute;
	z-index: 10;
	margin-top: 100px;
}

#contenter .bg-construction {
	margin-top: 130px;
	height: 60%;
	background: url(../../html/login/skin/carFamily_construction.png) center
		center no-repeat;
	background-size: contain;
	position: absolute;
	z-index: 5;
}
</style>
</head>
<body style="min-width: 1024px; overflow: hidden;" scroll="no" class="index">
	<div class="home-content">
		<div id="contenter">
			<div class="logo-construction col-md-8 col-sm-10 col-xs-10 col-md-offset-2 col-sm-offset-1 col-xs-offset-1"></div>
			<div class="bg-construction col-md-10 col-sm-10 col-xs-10 col-md-offset-1 col-sm-offset-1 col-xs-offset-1"></div>
			<div class="login-box login-form">
				<form id="loginform" method="post">
					<input type="hidden" name="loginResult" value="login_construction" />
					<div class="login_form">
						<ul class="clearfix login_ul">
							<li class="login_li"><input tabindex="1" type="text" placeholder="用户名" name="username" id="username" class="validate[required] txt" /></li>
							<li class="login_li"><input tabindex="2" type="password" placeholder="密码" name="password" id="password" class="validate[required] txt" />
							</li>
							<li class="login_li"><input tabindex="3" type="text" placeholder="企业代码" name="companyNo" id="companyNo" class="validate[required] txt"
									value="E002-01" /></li>
							<li class="login_li"><input id="Image1" class="login-btn" onclick="login();" value="登录" type="button" /></li>
						</ul>
					</div>
				</form>
			</div>

			<div class="foot"></div>
		</div>
	</div>
</body>
</html>
