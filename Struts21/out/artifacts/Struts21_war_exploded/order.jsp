<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>订单页面</title>
<link href="css/top.css" rel="stylesheet" type="text/css">
<style type="text/css">
.a5 {
	width: 945px;
	height: 555px;
	margin: 0 auto;
}

.a6 {
	width: 945px;
	height: 555px;
	border: 1px solid #ADC69C;
	margin: 0 auto;
}

.a7 {
	float: left;
	margin-left: 40px;
	margin-top: -550px;
}

.a8 {
	width: 820px;
	height: 430px;
	border: 1px solid #ADC69C;
	margin-left: 60px;
	margin-top: -470px;
}

.a9 {
	margin: 15px;
}

.a10 {
	width: 740px;
}
.a11{
	margin-left: 300px;
}
#a1 {
	background-color: #E9FDCD;
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
		<table class="a6">
			<tr>
				<td></td>
			</tr>
		</table>
		<div class="a7">
			<img src="img/n1.jpg"> &nbsp; <img alt="" src="img/jt21.jpg">
			&nbsp; <img src="img/n2.jpg"> &nbsp; <img alt=""
				src="img/jt21.jpg"> &nbsp; <img src="img/n3.jpg">
		</div>
		<div class="a8">
			<table>
				<tr>
					<td>
						<div class="a9">
							<img src="img/dd-1.jpg">路线信息
							<div class="a9">
								<img alt="" src="img/dd-2.jpg"><font color="#009900">路线信息</font>
							</div>
							<div>
								<form action="">
									<table class="a10">
										<tr id="a1">
											<td>线路编号</td>
											<td>线路名称</td>
											<td>单价</td>
											<td>出行工具</td>
										</tr>
										<tr>
											<td>39252b36d</td>
											<td>出游</td>
											<td><c:set var="sum" value="0"/>
												<c:forEach items="${listAll}" var="ShoppingCart">
													<c:set var="sum" value="${sum+ShoppingCart.cprice}" />
												</c:forEach>
												<c:out value="${sum }"></c:out>
											</td>
											<td>飞机</td>
										</tr>
									</table>
								</form>
								<br>
								<div>
									<hr
										style="height: 1px; border: none; border-top: 1px dashed #0066CC;" />
								</div>
							</div>
							<div>
								<img alt="" src="img/dd-1.jpg">填写游客信息 <font size="1px"
									color="#999999">请准确填写游客信息，以免不发生不必要的纠纷</font> <font color="red">*</font>选择出游日期<input
									type="text">
							</div>
							<div class="a9">
								<img alt="" src="img/dd-2.jpg"><font color="#009900">游客信息</font>
							</div>

							<div>
								<form action="">
									<table class="a10">
										<tr>
											<td align="right">*真实姓名</td>
											<td><input></td>
											<td align="right">*手机</td>
											<td><input></td>
										</tr>
										<tr>
											<td align="right">*身份证</td>
											<td><input></td>
											<td align="right"></td>
											<td><a href=""><font color="red">-移除该信息烂</font></a></td>
										</tr>
									</table>
								</form>
								<br>
								<div>
									<hr
										style="height: 1px; border: none; border-top: 1px dashed #0066CC;" />
								</div>
								<br>
								<div><font color="red"><a href="">+添加游客信息</a></font> </div>
								<br>
								<div class="a11">
								<a href="SuccessAction.action"><img alt="" src="img/xyb.jpg"></a>
								</div>
							</div>
						</div>
					</td>
				</tr>

			</table>
		</div>
	</div>
</body>
</html>