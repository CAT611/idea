<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <link href="css/top.css" rel="stylesheet" type="text/css">
<title>团购</title>

<style type="text/css">
.a5 {
	width: 1003px;
	margin: 0 auto;
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
	<div class="a5">
		<img alt="" src="img/tgg1.jpg">
		<div>
			<form action="">
				<table>
					<tr>
						<c:forEach var="tuan" items="${list}" begin="0" end="2">
						<td><img alt="" src="${tuan.gphoto }"> <br>
							<p>${tuan.gname }</p>
							<p>${tuan.gintro }</p>
							<p>
								<font color="red" size="3">团购价${tuan.gprice }</font><font color="grey"
									size="1">原价${tuan.oldPrice }</font>
							</p>
							<p>
								<font color="grey" size="1">已有两人参与</font>
							</p></td>
							</c:forEach>
					</tr>
					<tr>
						<c:forEach var="tuan" items="${list}" begin="3" end="5">
						<td><img alt="" src="${tuan.gphoto }"> <br>
							<p>${tuan.gname }</p>
							<p>${tuan.gintro }</p>
							<p>
								<font color="red" size="3">团购价${tuan.gprice }</font><font color="grey"
									size="1">原价${tuan.oldPrice }</font>
							</p>
							<p>
								<font color="grey" size="1">已有两人参与</font>
							</p></td>
							</c:forEach>				
					</tr> 
				</table>
			</form>
		</div>
	</div>
	<div style="text-align: center;">
		<a href="GrouponServlet?pageNum=1">首页</a> <a href="GrouponServlet?pageNum=${pageNum-1 }">上一页</a> <a href="GrouponServlet?pageNum=${pageNum+1 }">下一页</a> <a href="GrouponServlet?pageNum=${num }">尾页</a>
	</div>
	<div>
		<hr style="border: 1px solid grey" width="100%">
	</div>
	<p style="text-align: center;">许可证编号：125842154 鄂ICP备125478966</p>
	<p style="text-align: center;">
		<a href="">隐私保护</a>|<a href="">友情链接</a>|<a href="">网站地图</a>|<a href="">友情链接</a>|<a href="">商务合作</a>
	</p>
</body>
</html>