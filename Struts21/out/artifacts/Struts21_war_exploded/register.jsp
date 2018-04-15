<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-2.1.4.js"></script>
    <script type="text/javascript" src="js/register.js"></script>
    <title>注册页面</title>
<link rel="shortcut icon" href="img/che.jpg">
<style type="text/css">
ul {
	margin: 0 auto;
}

ul li {
	list-style: none;
	float: left;
	margin-left: 50px;
	line-height: 40px;
}
a:hover {
	color: red;
}
body {
	margin: 0 auto;
}

.a1 {
	height: 97px;
	width: 100%;
	background: url('img/top-bg.jpg')
}

.a2 {
	width: 975px;
	margin: 0 auto;
}

.a3 {
	background: url('img/menu.jpg');
	height: 42px;
	width: 100%;
}

.a4 {
	width: 1100px;
	margin: 0 auto;
}

.a5 {
	width: 800px;
	height: 535px;
	margin: 0 auto;
	border: 1px solid grey;
}

.a6 {
	height: 38px;
	background: url('img/tt-bg.jpg');
	line-height: 38px;
}

.a7 table {
	width: 800px;
	height: 497px;
	margin: 0 auto;
}

.a8 {
	float: right;
	margin-top: -497px;
}

.a9 {
	background: url("img/kf2.jpg");
	height: 52px;
	width: 230px;
	color: white;
	line-height: 28px;
	text-align: center;
}

.a10 {
	text-align: center;
}
.mes{
	text-align: left;
	color:red;
}
</style>
</head>

<body>
	<div class="a1">
		<div class="a2">
			<img alt="ss" src="img/logo.jpg" align="left"> <img alt="ss"
				src="img/phone.jpg" align="right">
		</div>
	</div>
	<!-- 导航 -->
	<div class="a3">
		<div class="a4">
			<ul>
				<li><a href="HomeAction.action">首页</a></li>
				<li><img src="img/t1.jpg"></li>
				<li><a href="InsideAction.action">境外游</a></li>
				<li><img src="img/t1.jpg"></li>
				<li><a href="">境内游</a></li>
				<li><img src="img/t1.jpg"></li>
				<li><a href="">热门游</a></li>
				<li><img src="img/t1.jpg"></li>
				<li><a href="GrouponAction.action">团购</a></li>
				<li><a href="CartAction.action"><img alt="" src="img/che.jpg"></a></li>
			</ul>
		</div>
	</div>
	<br>
	<div class="a5">
		<div class="a6">会员注册</div>
		<div class="a7">
			<form action="RegisterAction.action" method="post" onsubmit="return check();">
				<table>
					<%--<tr>
						<td style="text-align: right;">用户账号</td>
						<td><input name="user.uid" value="nextID"></td>
					</tr>--%>
					<tr>
							<td style="text-align: right;">用户姓名</td>
							<td><input name="user.uname" id="uname"><span id="unameMes" class="mes"></span></td>
					</tr>
					<tr>
						<td style="text-align: right;">设置密码</td>
						<td><input name="user.upwd" id="upwd"></td>
					</tr>
					<tr>
						<td style="text-align: right;">确认密码</td>
						<td><input type="user.password" name="newPwd" id="newPwd"><span id="pwdMes" class="mes"></span></td>
					</tr>

					<tr>
						<td style="text-align: right;">身份证号</td>
						<td><input name="user.ucard" id="ucard"><span id="ucardMes" class="mes"></span></td>
					</tr>
					<tr>
						<td style="text-align: right;">性别</td>
						<td><input type="radio" value="男" name="user.sex" checked="checked">男<input
							type="radio" value="女" name="sex"> 女</td>
					</tr>
					<tr>
						<td style="text-align: right;">手机号码</td>
						<td><input name="user.uphone" id="uphones"><span id="uphoneMes" class="mes"></span></td>
					</tr>
					<tr>
						<td style="text-align: right;">校验码</td>
						<td><input> 看不清楚？换一张</td>
					</tr>
					<tr>
						<td style="text-align: right;"></td>
						<td><input type="submit" ></td>
					</tr>
					<tr>
						<td style="text-align: right;"></td>
						<td><input type="checkbox" name="rule"><a href="rule.html">涂乐行旅游服务会员条款</a>
						</td>
					</tr>
				</table>
			</form>
			<div class="a8">
				<div>
					<img alt="" src="img/kf.jpg">
				</div>
				<div class="a9">
					<a href="login.jsp">已有账户，请点击登录</a>
				</div>
			</div>
		</div>
	</div>
	<div>
		<hr style="border: 1px solid grey" width="100%">
	</div>
	<p class="a10">许可证编号：125842154 鄂ICP备125478966</p>
	<p class="a10">
		<a href="">隐私保护</a>|<a href="">友情链接</a>|<a href="">网站地图</a>|<a href="">友情链接</a>|<a href="">商务合作</a>
	</p>
</body>
</html>