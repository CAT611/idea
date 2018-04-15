<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<script type="text/javascript" src="js/jquery-2.1.4.js"></script>
<script>
	function reloadImage() {
		document.getElementById("imgservlet").src = "servletFirst";
	}
	function onb() {

		/* 访问地址 */
		var url = "yamService";
		/* 传递参数 */
		var postData = {
			"yzm" : $("#yzm").val()
		};
		/* data回调函数   post提交方式*/
		$.post(url, postData, function(data) {
			if (data == "2") {
				$("#sp").html("验证码错误");
				$("#sp").css("color", "red");
			} else {
				$("#sp").html(" ");
			}

		});

		/* $.ajax({
			url:"yamService",
			data:{"yzm" : $("#yzm").val()},
			type:"post",
			success:function(result){
				console.log(result)
				if (result == "2") {
						$("#sp").html("验证码错误");
						$("#sp").css("color", "red");
					} else {
						$("#sp").html(" ");
					}
			}
		}) */

	}
</script>
<body>
	<form action="LoginService" method="post">
		user:<input type="text" name="uname"><br /> <br /> pwd:<input
			type="password" name="upwd"><br /> <br /> 验证码:<input
			type="text" id="yzm" onblur="onb()"><img src="servletFirst"
			id="imgservlet" onclick="reloadImage()"><span id="sp"></span> <br />
		<br /> <input type="submit" value="提交">
	</form>
</body>
</html>
