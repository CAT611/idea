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
<script type="text/javascript" src="js/jquery-2.1.4.js"></script>
<script type="text/javascript" src="js/inside.js"></script>
<link rel="stylesheet" type="text/css" href="css/top.css">
<title>境内游</title>
<style type="text/css">
.a5 {
	width: 1003px;
	margin: 0 auto;
}

.a6 {
	margin-top: -250px;
}

.a6 tr td {
	position: relative;
	size: 12px;
	margin-left: 5px;
}

.a6-1 {
	margin-top: -275px;
	margin-left: 220px;
}

.a7 {
	width: 800px;
}

.a7 td {
	background-color: black;
	color: white;
	font-size: 15px;
	height: 30px;
	padding: 0.5px;
	z-index:5;
}

.a8 {
	width: 180px;
	height: 120px;
	padding-left: 15px;
	text-align: center;
}

.a9 {
	position: relative;
	margin: 30px;
	margin-top: -35px;
	color: white;
	font-weight: bold;
}

.a9-1 {
	float: left;
	display: inline;
}
.a9-2 {
	width: 170px;
	height: 120px;
	background-color: #F6F6F6px;
	margin-left:160px;
	margin-top: -140px;
}
.a9-3 {
	width: 160px;
	height: 120px;
}

.a10 {
	width: 240px;
	height: 150px;
}

.a11 {
	width: 240px;
}
.a6-2 ul li {
	position: absolute;
	overflow: hidden;
	float: right;	
	margin-left: -40px;
	margin-top: 10px;
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
					<li><a href="InsideServlet">境外游</a></li>
					<li><img src="img/t1.jpg"></li>
					<li><a href="">境内游</a></li>
					<li><img src="img/t1.jpg"></li>
					<li><a href="">热门游</a></li>
					<li><img src="img/t1.jpg"></li>
					<li><a href="GrouponServlet">团购</a></li>
					<li><a href="che.jsp"><img alt="" src="img/che.jpg"></a></li>
			</ul>
		</div>
	</div>
	<!-- 爸爸妈妈我们去哪儿啊 -->
	<div class="a5">
		<img alt="" src="img/banner.jpg">
		<!-- 当季热门旅游 -->
		<div>
			<img alt="" src="img/dj.jpg">
			<table class="a6">
				<tr>
					<td>当月景点推荐</td>
				</tr>
				<tr>
					<td>武汉欢乐谷|海洋世界</td>
				</tr>
				<tr>
					<td>武汉热门景点</td>
				</tr>
				<tr>
					<td>黄鹤楼|海洋世界</td>
				</tr>
				<tr>
					<td>咸宁热门景点</td>
				</tr>
				<tr>
					<td>咸宁温泉|九宫山</td>
				</tr>
				<tr>
					<td>宜昌热门景点</td>
				</tr>
				<tr>
					<td>三峡大坝|当阳</td>
				</tr>
				<tr>
					<td>热门景点酒店</td>
				</tr>
				<tr>
					<td>武汉景点酒店|异常景点酒店</td>
				</tr>

			</table>
		</div>
		<!-- 错峰出游 -->
		<div class="a6-1">
			<div class="a6-2">
				<ul class="imgs">
        			<li><a id="img1" href="#"><img class="img1" alt="" src="img/jn1.jpg"></a></li>
        		 <!-- 	<li><a href="#"><img class="img2" alt="" src="img/jn2.jpg"></a></li>
        			<li><a href="#"><img class="img3" alt="" src="img/jn3.jpg"></a></li>
        			<li><a href="#"><img class="img4" alt="" src="img/jn4.jpg"></a></li>
        			<li><a href="#"><img class="img5" alt="" src="img/jn5.jpg"></a></li>
        			<li><a href="#"><img class="img6" alt="" src="img/jn6.jpg"></a></li>
        			<li><a href="#"><img class="img7" alt="" src="img/jn7.jpg"></a></li>
        			<li><a href="#"><img class="img8" alt="" src="img/jn8.jpg"></a></li>
        			<li><a href="#"><img class="img9" alt="" src="img/jn9.jpg"></a></li>
        			<li><a href="#"><img class="img10" alt="" src="img/jn10.jpg"></a></li> -->
    			</ul>
			</div>
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			<!-- 出游地点 -->
			<div class="a7">
				<form action="">
					<table>
						<tr>
							<td  class="mov1">丽江千古情</td>
							<td  class="mov2">错峰出游行</td>
							<td  class="mov3">妇女节特集</td>
							<td  class="mov4">三亚自由行</td>
							<td  class="mov5">踏青至福建</td>
							<td  class="mov6">新云南心旅</td>
							<td  class="mov7">东北特色游</td>
							<td  class="mov8">张家界风情</td>
							<td  class="mov9">三亚特价超</td>
							<td  class="mov10">洛阳牡丹节</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<!-- 最新活动 -->
		<br>
		<div>
			<img alt="" src="img/zx.jpg">最新活动
		</div>
		<div>
			<hr width="100%" style="border: 1px solid #CCCCCC;">
		</div>
		<div>
			<form action="">
				<table>
					<tr>
						<c:forEach items="${listTop10}" var="sight" begin="0" end="4" >
							<td><img alt="" src="${sight.sphoto}" class="a8">
							<div class="a9">${sight.sname}</div>
							<div>&nbsp;时间：2018-3-6</div></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${listTop10}" var="sight" begin="5" end="10" >
							<td><img alt="" src="${sight.sphoto}" class="a8">
							<div class="a9">${sight.sname}</div>
							<div>&nbsp;时间：2018-3-6</div></td>
						</c:forEach>
					</tr>
				</table>
			</form>
		</div>

		<br>
		<!-- 今日景点团购 -->
		<div>
			<img alt="" src="img/sdf.jpg">今日景点团购
		</div>
		<div>
			<hr width="100%" style="border: 1px solid #CCCCCC;">
		</div>
		<c:forEach items="${listTop3}" var="sight">
			<div class="a9-1">
			<div><img alt="" src="${sight.sphoto}" class="a9-3"></div>
			<div class="a9-2">
			<p>${sight.sintro }</p>
			<p>团购价<font color="#FF3300">￥${sight.sprice }</font>${sight.soprice-sight.soprice}</p>
			<img src="img/qg.jpg">
			</div>
		</div> 
		</c:forEach>
			<br><br>
			<br><br>
			<br><br>
			<br><br>
		<!-- 推荐景点 -->
		<div>
			<img src="img/tjjd.jpg">
		</div>
		<div>
			<hr width="100%" style="border: 1px solid #CCCCCC;">
		</div>
		<div>
			<form action="">
				<table>
					<tr>
					<c:forEach items="${listTop8}" var="sight" begin="0" end="3">
						<td>
							<img alt="" src="${sight.sphoto }" class="a10"> <br>
							<p class="a11">${sight.sintro}</p>
						</td>
					</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${listTop8}" var="sight" begin="4" end="8" >
						<td>
							<img alt="" src="${sight.sphoto }" class="a10"> <br>
							<p class="a11">${sight.sintro}</p>
						</td>
					</c:forEach>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div>
		<hr style="border: 1px solid grey" width="100%">
	</div>
	<p style="text-align: center;">许可证编号：125842154 鄂ICP备125478966</p>
	<p style="text-align: center;">
		<a href="">隐私保护</a>|<a href="">友情链接</a>|<a href="">网站地图</a>|<a href="">友情链接</a>|<a
			href="">商务合作</a>
	</p>
</body>
</html>