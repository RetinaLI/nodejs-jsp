<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/pages/template/jsp/taglibs.jspf"%>
<head>
<style type="text/css">
.index {
	background: url(../../html/login/skin/loginBackGround_forland.jpg)
		center center no-repeat;
	height: 100%;
}

.login-form {
	position: fixed;
	bottom: 10%;
}

.logo-forland {
	height: 15%;
	background: url(../../html/login/skin/logo_forland.png) center center
		no-repeat;
	background-size: contain;
	margin-top: 115px;
}

.bg-forland {
	height: 45%;
	background: url(../../html/login/skin/carFamily_forland.png) center
		center no-repeat;
	background-size: contain;
	margin-top: 85px;
	margin-bottom: 25px;
}
</style>
</head>
<body style="min-width: 1024px; overflow: hidden;" scroll="no" class="index">
	<div class="home-content">
		<div id="contenter">
			<div class="logo-forland col-md-8 col-sm-10 col-xs-10 col-md-offset-2 col-sm-offset-1 col-xs-offset-1"></div>
			<div class="bg-forland col-md-8 col-sm-8 col-xs-8 col-md-offset-2 col-sm-offset-2 col-xs-offset-2"></div>
			<div class="login-box login-form">
				<form id="loginform" method="post">
					<input type="hidden" name="loginResult" value="login_forland" />
					<div class="login_form">
						<ul class="clearfix login_ul">
							<li class="login_li"><input tabindex="1" type="text" placeholder="用户名" name="username" id="username" class="validate[required] txt" /></li>
							<li class="login_li"><input tabindex="2" type="password" placeholder="密码" name="password" id="password" class="validate[required] txt" /></li>
							<li class="login_li"><input tabindex="3" type="text" placeholder="企业代码" name="companyNo" id="companyNo" value="E019"
									class="validate[required] txt" /></li>
							<li class="login_li"><input id="Image1" class="login-btn" onclick="login();" value="登录" type="button" /></li>
						</ul>
					</div>
				</form>
			</div>

			<div class="foot"></div>
		</div>
	</div>
</body> 
