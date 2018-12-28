<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/pages/template/jsp/taglibs.jspf"%>
<head>
<style type="text/css">
.index {
	background: url(../../html/login/skin/loginBackGround_common.jpg) center
		center no-repeat;
	height: 100%;
}

.login-form {
	position: fixed;
	bottom: 10%;
	z-index: 9;
}

.logo-common {
	height: 10%;
	background: url(../../html/login/skin/logo_common.png) center center
		no-repeat;
	background-size: contain;
	position: absolute;
	z-index: 10;
	margin-top: 100px;
}

.bg-common {
	margin-top: 130px;
	height: 60%;
	background: url(../../html/login/skin/carFamily_common.png) center
		center no-repeat;
	background-size: contain;
	position: absolute;
	z-index: 5;
}
.foot {
	margin-top: 0!important;
}
.register {
	margin-left: -62px;
	position: fixed;
	bottom: 5%;
	left: 50%;
	width: 125px;
	font-size: 12px;
	color: #fff;
	text-align: center;
	border-bottom: 1px solid #4F91FF;
	cursor: pointer;
	text-align: center;
}
#myModal {
	position: fixed;
	left: 50%;
	top: 50%;
	margin-top: -244px;
	margin-left: -450px;
	width: 800px;
	height: 488px;
	background-color: #fff;
	box-shadow: 0px 4px 8px 0px rgba(0,0,0,0.12);
	z-index: 99;
}
#myModal h2 {
	position: absolute;
	top: 60px;
	left: 0;
	width: 100%;
	font-size: 20px;
	color: #333;
	text-align: center;
}
#myModal .pro {
	position: absolute;
	top: 180px;
	left: 50%;
	transform: translate(-50%, 0);
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	z-index: 1;
}
#myModal .item {
	width: 210px;
	text-align: center;
}
#myModal .item img {
	width: 36px;
	height: 36px;
}
#myModal .item .circle {
	margin: 16px auto;
	width: 7px;
	height: 7px;
	border: 3px solid #fff;
	border-radius: 100%;
	background-color: #aaa;
}
#myModal .item .detail {
	font-size: 14px;
	color: #333;
}
#myModal .line {
	width: 420px;
	height: 2px;
	background-color: #eee;
	position: absolute;
	top: 245px;
	left: 190px;
}
#myModal .dd {
	box-sizing: border-box;
	position: absolute;
	top: 308px;
	background-color: #F7F7F8;
	padding: 5px;
	width: 200px;
}

#myModal .dd.tel-nums {
	left: 86px;
}
#myModal .dd.files {
	left: 295px;
}
#myModal .dd.suc {
	left:506px;
}
#myModal .dd::after {
	content: "";
	position: absolute;
	top: -14px;
	left: 50%;
	margin-left: -3.5px;
	width: 0;
	height: 0;
	border: 7px solid transparent;
	border-bottom-color: #F7F7F8;
}
#myModal .c {
	position: absolute;
	top: 10px;
	right: 20px;
	cursor: pointer;
	color: #aaa;
	font-size: 22px;
}
#mask {
	display: none;
	position: fixed;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.7);
	z-index: 99;
}
</style>
</head>
<body style="min-width: 1024px; overflow: hidden;" scroll="no" class="index">
	<div class="home-content">
		<div id="contenter">
			<div class="logo-common col-md-8 col-sm-10 col-xs-10 col-md-offset-2 col-sm-offset-1 col-xs-offset-1"></div>
			<div class="bg-common col-md-8 col-sm-8 col-xs-8 col-md-offset-2 col-sm-offset-2 col-xs-offset-2"></div>
			<div class="login-box login-form">
				<form id="loginform" method="post">
					<input type="hidden" name="loginResult" value="login" />
					<div class="login_form">
						<ul class="clearfix login_ul">
							<li class="login_li"><input tabindex="1" type="text" placeholder="用户名" name="username" id="username" class="validate[required] txt" /></li>
							<li class="login_li"><input tabindex="2" type="password" placeholder="密码" name="password" id="password" class="validate[required] txt" /></li>
							<li class="login_li"><input tabindex="3" type="text" placeholder="企业代码" name="companyNo" id="companyNo" value=""
									class="validate[required] txt" /></li>
							<li class="login_li"><input id="Image1" class="login-btn" onclick="login();" value="登录" type="button" /></li>
						</ul>
					</div>
				</form>
			</div>
			<div class="register" id="register">没有账号，如何开通？</div>
			<div id="mask">
				<div id="myModal" class="my-modal">
					<div class="c" id="cl">×</div>
					<h2>福田汽车车联网平台账号开通流程</h2>
					<div class="pro">
						<div class="item">
							<div class="img-box">
								<img src="/html/icons/reg1.png" alt="">
							</div>
							<div class="circle"></div>
							<div class="detail">
								电话咨询客服开通账号
							</div>
						</div>
						<div class="item">
							<div class="img-box">
								<img src="/html/icons/reg2.png" alt="">
							</div>
							<div class="circle"></div>
							<div class="detail">
								提交资料及用户信息
							</div>
						</div>
						<div class="item">
							<div class="img-box">
								<img src="/html/icons/reg3.png" alt="">
							</div>
							<div class="circle"></div>
							<div class="detail">
								账号开通成功
							</div>
						</div>
					</div>
					<div class="line"></div>
					<div class="dd tel-nums">
						<p>电话：4001-199-199</p>
						<p>邮箱：itinkservice@foton.com.cn</p>
					</div>
					<div class="dd files">请提供联系人及电话，金融、经销商业务提供的资料需向客服咨询</div>
					<div class="dd suc">
						帐号开通完成后将会以邮件或其它方式告知
					</div>
				</div>
			</div>
			<div class="foot"></div>
		</div>
	</div>
	<script>
		$(function() {
			$('.register').click(function() {
				$('#mask').show();
				return false;
			});
			$('#mask').click(function(ev) {
				var t = ev.target;
				if(t.id === 'mask' || t.id === 'cl') {
					$('#mask').hide();
				}
			});
		})
	</script>
</body>
