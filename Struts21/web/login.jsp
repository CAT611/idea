<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
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
	position: relative;
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
	text-align: center;
	width: 1000px;
	margin: 0 auto;
}

.a6 {
	position: relative;
	float: left;
	margin-left: 630px;
	margin-top: -200px;
}

table {
	margin: 10px;
}

table tr td {
	margin: 10px;
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
				<li><a href="HomeServlet">首页</a></li>
					<li><img src="img/t1.jpg"></li>
					<li><a href="inside.jsp">境外游</a></li>
					<li><img src="img/t1.jpg"></li>
					<li><a >境内游</a></li>
					<li><img src="img/t1.jpg"></li>
					<li><a >热门游</a></li>
					<li><img src="img/t1.jpg"></li>
					<li><a href="groupon.jsp">团购</a></li>
					<li><a href="che.jsp"><img alt="" src="img/che.jpg"></a></li>
			</ul>
		</div>
	</div>
	<br>
	<div class="a5">
		<div>
			<img alt="" src="img/r-bg.jpg">
			<div class="a6">
				<form action="LoginAction.action" method="post">
					<table>
						<tr>
							<td style="text-align: right;">登录名</td>
							<td style="text-align: left;"><input size="20"  name="user.uid" value="${cookie.uid.value }"></td>
						</tr>
						<tr>
							<td style="text-align: right;">密&nbsp;码</td>
							<td style="text-align: left;"><input type="password" size="20"  name="user.upwd" value="${cookie.uPwd.value }"></td>
						</tr>
						<tr>
							<td style="text-align: right;"></td>
							<td style="text-align: left;"><input type="checkbox" value="unLogin" name="unLogin">30天内自动登录</td>
						</tr>
						<tr>
							<td style="text-align: right;"></td>
							<td style="text-align: left;"><input type="submit" src="img/login-b.jpg"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>

	</div>
</body>
</html>