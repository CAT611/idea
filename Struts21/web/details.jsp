<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">

	<title>My JSP 'view.jsp' starting page</title>
	<link href="css/top.css" rel="stylesheet" type="text/css">
	<style type="text/css">
		a:hover {
			color: red;
		}

		a {
			text-decoration: none;
			color: black;
		}
		.a5 {
			width: 1003px;
			margin: 0 auto;
		}

		.a6 {
			border: 1px solid #72B950;
			margin-left: 10px;
			width: 980px;
			height: 1230px;
			width: 980px;
		}

		.a7 {
			margin: 10px;
		}

		.a8 {
			margin-left: 450px;
			margin-top: -270px;
		}

		.a8 td {
			height: 30px;
			font-weight: bold;
		}

		.a9 {
			border: 2px solid #FFF5DA;
		}

		.a9 td {
			height: 30px;
			line-height: 30px;
		}
		.a10{

		}
	</style>
</head>
<!-- <script type="text/javascript">
	$(function(){
			$("#che").click(function(){
				$("#che").submit();
			});
			$("#order").click(function(){
				$("#order").submit();
			});
	});
</script> -->
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
	<img alt="" src="img/banner.jpg">
	<div class="a6">
		<div class="a7">
			<!-- 左上边距20px -->
			<div>
				<font color="#009962">${group.gintro}</font>
				<img alt="" src="img/tjcp.jpg">
				<img alt="" src="img/fk.jpg">
				<img alt="" src="img/gty.jpg" align="right">
			</div>
			<br>
			<br>
			<div>
				<!-- 大图展示区 -->
				<img alt="" src="${gphoto[1]} " width="430px" height="270px">
				<div class="a8">
					<form action="CartAction.action?sname=${sname}" method="post">
						<table>
							<tr>
								<td>涂乐行价：${group.oldPrice}</td>
							</tr>
							<tr>
								<td>团购价：${group.gprice}</td>
							</tr>
							<tr>
								<td>最大优惠：${group.oldPrice-group.gprice}</td>
							</tr>
							<tr>
								<td>出游天数：${group.gday}天</td>
							</tr>
							<tr>
								<td>出游人数：已有0人出游此路线(从订单表中查询name的数量)</td>
							</tr>
							<tr>
								<td>提前报名：建议提前一天报名</td>
							</tr>
						</table>
						<div>
							<br> <br>
							<input type="submit" value="" name="che" style="background-image: url('img/jgwc.jpg'); width:123px;height: 43px">
							<input type="submit" value="" name="order" style="background-image: url('img/js.jpg');width:123px;height: 43px;">
						</div>
					</form>
				</div>

			</div>
			<br>
			<!-- 展示栏 -->
			<div>
				<img alt="" src="${gphoto[1]}" width="135px" height="85px">
				<img alt="" src="${gphoto[2]}" width="135px" height="85px">
				<img alt="" src="${gphoto[3]}" width="135px" height="85px">
			</div>
			<!-- 推荐理由  特别优惠-->
			<div>
				<form action="">
					<table class="a9">
						<tr>
							<td style="background-color: #FFF5DA" height="40px"><font
									size="5" style="font-weight: bold"> 推荐理由</font></td>
						</tr>
						<tr>
							<td><img alt="" src="img/d.jpg">&nbsp;含三早六正，早餐6元/人/餐</td>
						</tr>
						<tr>
							<td><img alt="" src="img/d.jpg">&nbsp;标准等当地非星级酒店，参考酒店，长沙：万怡商务酒店，广生商务酒店，家居酒店；武陵源：永辉，弗里德；凤凰：星期八酒店，慢走商务（2——3人间，）
								独立卫生间，彩电，定时热水，19.30-11.30，定时空调，无一次性用品。</td>
						</tr>
						<tr>
							<td><img alt="" src="img/d.jpg">&nbsp;轻松休闲之旅，浪漫古城，体会千年文化</td>
						</tr>
						<tr>
							<td style="background-color: #FFF5DA" height="40px"><font
									size="5" style="font-weight: bold"> 特别优惠</font></td>
						</tr>
						<tr>
							<td><img alt="" src="img/d.jpg">&nbsp;凤凰古城是国家历史文化名城，被称为新西南著名作家路易爱丽称赞为中国最美丽的小城。</td>
						</tr>
						<tr>
							<td><img alt="" src="img/d.jpg">&nbsp;热热闹闹的土家风情园，感受当地独特文化底蕴。</td>
						</tr>
						<tr>
							<td><img alt="" src="img/d.jpg">&nbsp;武昌/长沙往返空调火车硬座，当地空调旅游车（保证一人一座。）</td>
						</tr>

					</table>
				</form>
			</div>
			<!-- 景点简介 -->
			<br> <br>
			<div>
				<img alt="" src="img/tjjd.jpg"> &nbsp; <font color="#003300" size="3">景点简介</font>
			</div>
			<div>张家界可以游玩的景区众多，这里说下最好的四个景区：
				其一：武陵源景区也就是森林公园，这是来张家界必玩的景区，里面景点有森林公园、金鞭溪、袁家界、杨家界、天子山、十里画廊等，至少需要游玩二天的时间，门票为248元；
				其二：天门山景区，这里面有亚州最长的索道、世界公路奇观、玻璃栈道等，游玩时间为大半天的时间，门票258元包括往返的大索道；
				其三：大峡谷风景区，新开发的玻璃桥就是在这个景区了，这里需要游玩一天的时间，大峡谷及玻璃桥门票总共为256元；
				其四：凤凰古城，离张家界车程四个小时，也是游湖南必去的景点之一，门票148元（不去九景可不买票），游玩时间为一到二天的时间；
				大家可以根据游玩的时间来按排行程，或者根据游玩的景区来按排时间； PS:
				天门山景区和大峡谷的玻璃桥一定得提前三天以上预定才有票！提前三天以上预定才有票！提前三天以上预定才有票！重要的事情说三遍！！！打算去这两个景区的朋友记得一定要让当地导游提前帮你定好！
			</div>
			<br>
			<!-- 温馨提示 -->
			<div>
				<form action="">
					<table class="a9">
						<tr>
							<td style="background-color: #FFF5DA" height="40px"><font
									size="5" style="font-weight: bold"> 温馨提示</font></td>
						</tr>
						<tr>
							<td><img alt="" src="img/d.jpg">&nbsp;晚上自由活动时要结伴而行，不要太晚回酒店，并要向领队或导游及时报告；不安全的场所不要去；出去要带好酒店卡片（上面有酒店的名称、地址、电话），以防不测；</td>
						</tr>
						<tr>
							<td><img alt="" src="img/d.jpg">&nbsp;标准等当地非星级酒店，参考酒店，长沙：万怡商务酒店，广生商务酒店，家居酒店；武陵源：永辉，弗里德；凤凰：星期八酒店，慢走商务（2——3人间，）
								独立卫生间，彩电，定时热水，19.30-11.30，定时空调，无一次性用品。</td>
						</tr>
						<tr>
							<td><img alt="" src="img/d.jpg">&nbsp;轻松休闲之旅，浪漫古城，体会千年文化</td>
						</tr>

					</table>
				</form>
			</div>
		</div>

	</div>

</div>
<br>
<div>
	<hr style="border: 1px solid grey" width="100%">
</div>
<p style="text-align: center;">许可证编号：125842154 鄂ICP备125478966</p>
<p style="text-align: center;">
	<a href="">隐私保护</a>|<a href="">友情链接</a>|<a href="">网站地图</a>|<a href="">友情链接</a>|<a href="">商务合作</a>
</p>
</body>
</html>