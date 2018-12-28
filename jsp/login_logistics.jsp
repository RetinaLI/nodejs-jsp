<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/pages/template/jsp/taglibs.jspf"%>
<head>
<style type="text/css">
.index {
	background: url(../../html/login/skin/loginBackGround_logistics.jpg)
		center center no-repeat;
	height: 100%;
}

.index .logo .logistics_div {
	text-align: center;
}

.index .foot {
	margin-top: 47px;
}

.login-form {
	position: fixed;
	bottom: 15%;
}

.logo-logistic {
	height: 20%;
	background: url(../../html/login/skin/logo_logistics.png) center center
		no-repeat;
	background-size: contain;
	position: absolute;
	margin-top: 145px;
	margin-bottom: 200px;
}
</style>
</head>
<body style="min-width: 1024px; overflow: hidden;" scroll="no" class="index">
	<div class="home-content">
		<div id="contenter">
			<div class="logo-logistic col-md-8 col-sm-10 col-xs-10 col-md-offset-2 col-sm-offset-1 col-xs-offset-1"></div>
			<div class="login-box login-form">
				<form id="loginform" method="post">
					<input type="hidden" name="loginResult" value="login_logistics" />
					<div class="login_form">
						<ul class="clearfix login_ul">
							<li class="login_li"><input tabindex="1" type="text" placeholder="用户名" name="username" id="username" class="validate[required] txt" /></li>
							<li class="login_li"><input tabindex="2" type="password" placeholder="密码" name="password" id="password" class="validate[required] txt" />
							</li>
							<li class="login_li"><input tabindex="3" type="text" placeholder="企业代码" name="companyNo" id="companyNo" class="validate[required] txt"
									value="E101"></li>
							<li class="login_li"><input id="Image1" class="login-btn" onclick="login();" value="登录" type="button" /></li>
						</ul>
					</div>
				</form>
			</div>
			<div class="foot"></div>
		</div>
	</div>
</body> 
