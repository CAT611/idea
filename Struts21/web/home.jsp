<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>途乐行首页</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="/css/liMarquee.css">
<script src="/js/jquery.liMarquee.js"></script>
<script src="/js/jquery-2.1.4.js"></script>
<script type="text/javascript">
	$(function() {
		$('.a12').liMarquee();
	})
</script>
<style type="text/css">
ul {
	margin: 0 auto;
}

ul li {
	list-style: none;
	float: left;
	margin-left: 55px;
	line-height: 40px;
}

font {
	color: orange;
	size: 60;
}

a:hover {
	color: red;
}

a {
	text-decoration: none;
	color: black;
}

body {
	margin: 0 auto;
}

.c1 {
	margin: 0 auto;
	text-align: center;
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
	width: 1003px;
	height: 1240px;
	margin: 0 auto;
	/* border: 1px red solid; */
}

.a6 {
	float: left;
	display: inline;
}

.a6-0 {
	float: left;
	position: relative;
	margin-top: -400px;
	margin-left: 10px;
}

.a6-1 {
	position: relative;
	float: left;
	margin-left: 40px;
	margin-top: -30px;
}

.a6-2 {
	margin-left: 50px;
}

.a7 {
	float: left;
	display: inline;
	margin-left: -93px;
}
.a7-1 {
	float: left;
	display: inline;
	margin-left: 10px;
}

.a8 {
	border: 1px solid grey;
	width: 178px;
	height: 183px;
	float: left;
	margin-left: 820px;
	margin-top: -415px;
}

.a9 {
	float: left;
	margin-left: 500px;
	margin-top: -200px;
}

.a10 tr td {
	border: 1px solid grey;
	padding: 3px;
}

.a11 {
	position: relative;
	float: left;
	margin-top: -170px;
	margin-left: 280px;
}

.a12 {
	widows: 720px;
	height: 150px;
	position: relative;
	float: left;
	margin-left: 280px;
	margin-top: -138px;
	overflow: hidden;
}

.a13 {
	position: relative;
	float: left;
	margin-top: 600px;
}

.a14 {
	position: relative;
	margin-top: -660px;
}

.a15 tr td {
	width: 70px;
}

#a1 {
	border: 3px solid #CBEFB2;
	width: 270px;
	height: 660px;
}

#a2 {
	margin: 0 auto;
}

.a16 {
	background: url('img/con2-r.jpg');
	width: 720px;
	height: 40px;
	float: left;
	text-align: center;
	position: relative;
	margin-left: 5px;
	margin-top: -5px;
}

.a17 {
	position: relative;
	float: left;
	margin-left: 5px;
	margin-top: 0px;
}

.a18 {
	width: 200px;
}

.a19 {
	width: 350px;
}
</style>
</head>

<body>
	<div>
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
					<li><a href="che.jsp"><img alt="" src="img/che.jpg"></a></li>
				</ul>
			</div>
		</div>
		<!-- 爸爸妈妈我们去哪儿 -->
		<div class="a5">
			<div class="c1">
				<img src="img/banner.jpg">
			</div>
			<div class="a6">
				<div>
					<img alt="" src="img/conl.jpg">
				</div>
				<div class="a6-0">
					<div>
						<img alt="" src="img/jn.jpg">
					</div>
					<div class="a6-1">
						<a href="inside.jsp">境内游</a>
					</div>
					<div class="a6-2">
						<table style="text-align: left; size: 6; line-height: 20px">
							<s:iterator  value="listInside" id="inside" status="status" >
                                <s:if test="#status.count%3==1">
                                    <tr>
                                </s:if>
                                    <td><a href="DetailsAction.action?sname=<s:property value="#inside.sname"/>"><s:property value="#inside.sname"/></a></td>
                                <s:if test="#status.count%3==0">
                                     </tr>
                                </s:if>
                            </s:iterator>
						</table>
					</div>

					<div>
						<img alt="" src="img/jw.jpg">
					</div>
					<div class="a6-1">境外游</div>
					<div class="a6-2">
						<table style="text-align: left; size: 6; line-height: 20px">
                            <s:iterator  value="listOutside" id="inside" status="status" >
                                <s:if test="#status.count%3==1">
                                    <tr>
                                </s:if>
                                <td><a href="DetailsAction.action?sname=<s:property value="#inside.sname"/>"><s:property value="#inside.sname"/></a></td>
                                <s:if test="#status.count%3==0">
                                    </tr>
                                </s:if>
                            </s:iterator>
						</table>
					</div>
					<div>
						<img alt="" src="img/hd.jpg">
					</div>
					<div class="a6-1">海岛游</div>
					<div class="a6-2">
						<table style="text-align: left; size: 6; line-height: 20px">
                            <s:iterator  value="listIslands" id="inside" status="status" >
                                <s:if test="#status.count%3==1">
                                    <tr>
                                </s:if>
                                <td><a href="DetailsAction.action?sname=<s:property value="#inside.sname"/>"><s:property value="#inside.sname"/></a></td>
                                <s:if test="#status.count%3==0">
                                    </tr>
                                </s:if>
                            </s:iterator>
						</table>
					</div>
					<img alt="" src="img/zj.jpg">
					<div class="a6-2">
						<table style="text-align: left; size: 6; line-height: 20px">
                            <s:iterator  value="listByself" id="inside" status="status" >
                                <s:if test="#status.count%3==1">
                                    <tr>
                                </s:if>
                                <td><a href="DetailsAction.action?sname=<s:property value="#inside.sname"/>"><s:property value="#inside.sname"/></a></td>
                                <s:if test="#status.count%3==0">
                                    </tr>
                                </s:if>
                            </s:iterator>
						</table>
					</div>

				</div>
			</div>
			<div class="a7" >
				<%-- <img alt="" src="${chu.adr }"> --%>
				<ul>
					<li style="display: none" id="chuone"><img src="img/tg.jpg"></li>
					<li style="" id="chutwo"><img src="img/tg2.jpg"></li>
					<li style="display: none;opacity" id="chuthree"><img src="img/tg3.jpg"></li>
					<li style="display: none;opacity" id="chufour"><img src="img/tg4.jpg"></li>
				</ul>

			</div>
			<div class="a7-1">
				<a href="login.jsp"><img alt="" src="img/dl.jpg"></a> <a
					href="register.jsp"><img alt="" src="img/zc.jpg"></a>
			</div>
			<div class="a8">
				<font>96%</font>滿意度 <br> 已有 <font>2596874</font>人预定出游
				欢迎<font>${sessionScope.uid}</font>登录
			</div>
			<div class="a9">
				<table class="a10">
					<tr>
						<td><a href="#chuone">1</a></td>
						<td><a href="#chutwo">2</a></td>
						<td><a href="#chuthree">3</a></td>
						<td><a href="#chufour">4</a></td>
					</tr>
				</table>
			</div>
			<div class="a11">
				<div>
					<img alt="" src="img/tgj.jpg">
				</div>
			</div>
			<div class="a12" id="box">
				<marquee scrolldelay="150" aligh="top" onMouseOut="this.start()"
					onMouseOver="this.stop()">
					<table id="tabone">
						<tr>
							<td height="95px"><img src=img/scroll4.jpg width="160px"
								height="90px" />
								<p style="line-height: 0px">毛里求斯七日游</p>
								<p style="line-height: 0px">10369起原价10000</p></td>
							<td height="95px"><img src=img/scroll5.jpg width="160px"
								height="90px" />
								<p style="line-height: 0px">阿联酋六日游</p>
								<p style="line-height: 0px">10369起原价10000</p></td>
							<td><img src=img/scroll6.jpg width="160px" height="90px" />
								<p style="line-height: 0px">巴厘岛六日游</p>
								<p style="line-height: 0px">10369起原价10000</p></td>
							<td><img src=img/scroll7.jpg width="160px" height="90px" />
								<p style="line-height: 0px">香港四日游</p>
								<p style="line-height: 0px">10369起原价10000</p></td>
						</tr>
					</table>
					<table id="tabtwo"></table>
				</marquee>
			</div>
			<div class="a13">
				<div>
					<table id="a1">
					</table>
				</div>
				<div class="a14">
					<img src="img/yr.jpg" />
				</div>
				<div>
					<table class="a15">
                        <s:iterator  value="listOne" id="inside" status="status" >
                            <s:if test="#status.count%3==1">
                                <tr>
                            </s:if>
                            <td><a href="#"><s:property value="#inside.sname"/></a></td>
                            <s:if test="#status.count%3==0">
                                </tr>
                            </s:if>
                        </s:iterator>
					</table>
				</div>

				<div>
					<img src="img/lr.jpg" />
				</div>
				<div>
					<table class="a15">
                        <s:iterator  value="listTwo" id="inside" status="status" >
                            <s:if test="#status.count%3==1">
                                <tr>
                            </s:if>
                            <td><a href="#"><s:property value="#inside.sname"/></a></td>
                            <s:if test="#status.count%3==0">
                                </tr>
                            </s:if>
                        </s:iterator>
					</table>
				</div>
				<div>
					<img src="img/sr.jpg" />
				</div>
				<div>
					<table class="a15">
                        <s:iterator  value="listThree" id="inside" status="status" >
                            <s:if test="#status.count%3==1">
                                <tr>
                            </s:if>
                            <td><a href="#"><s:property value="#inside.sname"/></a></td>
                            <s:if test="#status.count%3==0">
                                </tr>
                            </s:if>
                        </s:iterator>
					</table>
				</div>
				<div>
					<img src="img/bb1.jpg" width="265px">
				</div>
				<div>
					<img src="img/bb2.jpg" width="265px">
				</div>
				<div>
					<img src="img/bb3.jpg" width="265px">
				</div>
			</div>
			<div class="a16">
				<ul>
					<li>境内游</li>
					<li>境外游</li>
					<li>海岛游</li>
					<li>自驾游</li>
				</ul>
			</div>
			<div class="a17">
				<table>
				<c:forEach items="${listInside}" var="sights">
					<tr>
						<td class="a18"><img src="${sights.sphoto}" width="200px"
							height="72px" /><br /> <font size="2">产品编号${sights.sid}</font></td>
						<td class="a19" height="40px"><p>
								<font size="3" color="#0D2DB6">[${sights.sday}日游]&nbsp;${sights.sname}双飞${sights.sday}日游&nbsp;&nbsp;交通工具（${sights.sway}）</font><br />
								<font size="1">简介：${sights.sintro}</font><br />
								<font size="1">本线路已有<font color="#FD6C00">${sights.sday}</font>人出游
								</font></td>
						<td><font color="#A8583D">￥1664元/每人</font></td>
					</tr>
				</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<div>
		<hr style="border: 1px solid grey" width="100%">
	</div>
	<p class="c1">许可证编号：125842154 鄂ICP备125478966</p>
	<p class="c1">
		<a href="">隐私保护</a>|<a href="">友情链接</a>|<a href="">网站地图</a>|<a href="">友情链接</a>|<a
			href="">商务合作</a>
	</p>
</body>
</html>