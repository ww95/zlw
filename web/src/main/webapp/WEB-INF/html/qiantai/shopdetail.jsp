<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>商品详情页</title>
        <link rel="stylesheet" type="text/css" href="css/shopdetail.css"/>
    </head>
    <body>
    <!--header部分-->
    <div id="header">
		<div id="top-left">
			让生活更精彩	
		</div>
		<div id="top-right">
			<div class="backstage">
				<a href="index.jsp">返回首页</a>
			</div>

			<div class="backstage">
				<a href="myorder.html">我的订单</a>
			</div>
			
			<div class="backstage">
				<a href="mycollection.html">我的收藏</a>
			</div>
			
			<div class="backstage">
				<a href="mynews.html">我的消息</a>
			</div>
			
			<div class="backstage">
				<a href="register.jsp">免费注册</a>
			</div>
			
			<div class="backstage">
				<a href="loading.jsp" style="color: blue;">您好，请登录</a>
			</div>
		</div>				
	</div>
	<!--header部分结束-->
	<!--搜索栏-->
	<div id="search">		
		<a href="index.jsp"><img src="img/logo.png" style="width: 60px;height: 60px;" alt="logo" id="logo"/></a>
		<div id="box">
			<input type="text" name="search" id="s_box" placeholder="请输入景点名、主题或关键词" />
			<div id="s_button">搜索</div>
		</div>		
	</div>
	
	<!--搜索栏部分结束-->
	<!--主导航栏-->
	<div id="nav">
		<ul>
			<li>
				<a href="#">热门景点</a>
				<ul>
					<li>三亚湾</li>
					<li>张家界</li>
					<li>武夷山</li>
					<li>富士山</li>
				</ul>
			</li>
			<li>
				<a href="#">周边景点</a>
				<ul>
					<li>梅山龙宫</li>
					<li>湄江风景区</li>
					<li>紫鹊界梯田</li>
					<li>冷水江波月洞</li>
				</ul>
			</li>
			<li>
				<a href="#">一日游</a>
				<ul>				
					<li>都江堰</li>
					<li>八达岭长城</li>
					<li>西安秦始皇陵</li>
				</ul>
			</li>
			<li>
				<a href="#">周末游</a>
				<ul>
					<li>泰山</li>
					<li>衡山</li>
					<li>华山</li>
					<li>恒山</li>
				</ul>
			</li>
			<li>
				<a href="#">跟团游</a>
				<ul>
					<li>西北青海湖</li>
					<li>云南香格里拉</li>	
					<li>新疆吐鲁番</li>	
				</ul>
			</li>
			<li>
				<a href="#">自由行</a>
				<ul>
					<li>长隆</li>
					<li>丽江</li>
					<li>长白山</li>	
					<li>海南三亚湾</li>														
				</ul>
			</li>
			<li>
				<a href="#">出国游</a>
				<ul>
					<li>美国</li>					
					<li>英国</li>
					<li>日本</li>
					<li>澳大利亚</li>
				</ul>
			</li>
			<li style="border: none;">
				<a href="#">定制旅游</a>
				<ul>
					<li>个人定制</li>
					<li>家庭定制</li>
					<li>公司定制</li>					
				</ul>
			</li>
		</ul>
	</div>
	<!--主导航栏部分结束-->
	<!--商品详情部分-->
	<div id="shopdetail">
		<div id="left">
			<img src="img/con1_1.jpg"/>
		</div>
		<div id="center">
			<h4 id="goodsname">&nbsp;</h4>
			<table>
				<tr>
					<td>价格：</td>
					<td id="goodspices">￥<span id="pices">15</span></td>
				</tr>
				<tr>
					<td>客户：</td>
					<td><a href="#" id="kehu">联系客户</a></td>
				</tr>
				<tr>
					<td>出发日期：</td>
					<td><input type="date" name="date" id="date" value="" /></td>
				</tr>
				<tr>
					<td>人数：</td>
					<td>成年人数：
					<select>
						<option value ="0">0</option>
					    <option value ="1">1</option>
					    <option value ="2">2</option>
					    <option value ="3">3</option>
					    <option value ="4">4</option>
					    <option value ="5">5</option>
					    <option value ="6">6</option>
					    <option value ="7">7</option>
					    <option value ="8">8</option>					    
					</select>&nbsp;	&nbsp;	&nbsp;				
					小孩数：
					<select>
						<option value ="0">0</option>
					    <option value ="1">1</option>
					    <option value ="2">2</option>
					    <option value ="3">3</option>
					    <option value ="4">4</option>
					    <option value ="5">5</option>
					    <option value ="6">6</option>
					    <option value ="7">7</option>
					    <option value ="8">8</option>
					</select>
					</td>
				</tr>
			</table>
			<p>
				<a href="shopping.jsp" id="btns">立即购买</a> 
				<a href="#" id="btns1">加入收藏</a>
			</p>
		</div>
		<div id="right">
			<h4>——热门景点</h4>			
			<img src="img/con1_1.jpg"/>
			<img src="img/con1_2.jpg"/>
			<img src="img/con1_3.jpg"/>
			<img src="img/con1_4.jpg"/>			
		</div>
	</div>
	<!--商品详情部分结束-->
	<!--商品简介-->
	<div id="introduction">
	<h3>商品简介</h3>
		<div id="intr-left">
			<div id="intr" onclick="showI()">商品详情</div>
			<div id="evaluate" onclick="showE()">商品评价</div>
		</div>
		<div id="intr-right">
			<div id="intr2">				
				<img src="img/con1_1.jpg"/>
				<span id="intrs">三亚</span>
			</div>
			<div id="evaluate2">
				<h3>买家评价</h3>
				<img src="img/evaluate.png"/>
				<h3>全部评价</h3>
			</div>
		</div>
	</div>
	<!--商品简介部分结束-->
	<!--底部栏-->
	<div id="footer">
		<div id="footer1">	
		<p>娄底市阳光旅行社很高兴为您提供旅游服务！</p>
		<p class="bold">热门旅游省份</p>		
		<p>云南 &nbsp;&nbsp;海南 &nbsp;&nbsp;西藏 &nbsp;&nbsp;浙江 &nbsp;&nbsp;山西 &nbsp;&nbsp;湖南 &nbsp;&nbsp;广东 &nbsp;&nbsp;江苏 &nbsp;&nbsp;安徽 &nbsp;&nbsp;福建 &nbsp;&nbsp;广西 &nbsp;&nbsp;贵州 &nbsp;&nbsp;新疆 &nbsp;&nbsp;四川 &nbsp;&nbsp;台湾</p>
		<p class="bold">热门目的地旅游</p>
		<p>香港旅游 &nbsp;&nbsp;厦门旅游 &nbsp;&nbsp;青岛旅游 &nbsp;&nbsp;桂林旅游 &nbsp;&nbsp;北京旅游 &nbsp;&nbsp;丽江旅游 &nbsp;&nbsp;三亚旅游 &nbsp;&nbsp;大理旅游</p>
		<p class="bold">热门国家旅游</p>
		<p>泰国旅游 &nbsp;&nbsp;法国旅游 &nbsp;&nbsp;英国旅游 &nbsp;&nbsp;越南旅游 &nbsp;&nbsp;日本旅游 &nbsp;&nbsp;美国旅游 &nbsp;&nbsp;澳大利亚旅游 &nbsp;&nbsp;土耳其旅游 &nbsp;&nbsp;俄罗斯旅游</p>
		<p><span class="bold" id="bold">友情链接</span> 酒店大全 &nbsp;&nbsp;神州租车 &nbsp;&nbsp;元旦旅游 &nbsp;&nbsp;清明旅游 &nbsp;&nbsp;五一旅游 &nbsp;&nbsp;端午旅游 &nbsp;&nbsp;爱奇艺旅游 &nbsp;&nbsp;网易旅游</p>
		</div>
		<div id="footer2">
			<span>返回首页</span>
			<span>代理合作</span>
			<span>加盟合作</span>
			<span>酒店加盟</span>
			<span>隐私政策</span>
			<span>友情链接</span>
			<span id="bottom">Copyright@2019-2019,index.com.All right reserved</span>
			<p>ICP证：湘**-********</p> 
		</div>
	</div>
	<!--返回顶部-->
	<a href="#header" id="backtop">
		<img src="img/backtop.jpg"/>
	</a>
	<!--侧边栏-->
	<div id="sidebar">		
		<a href="personal.html"><img src="img/personal.jpg" onmouseover="Showdiv1()" onmouseout="Hidderdiv1()"/></a>				
		<a href="mycollection.html"><img src="img/Mycollection.jpg" onmouseover="Showdiv2()" onmouseout="Hidderdiv2()"/></a>
		<a href="mynews.html"><img src="img/msg.jpg" onmouseover="Showdiv5()" onmouseout="Hidderdiv5()"/></a>
		<a href="myorder.html"><img src="img/myorder.jpg" onmouseover="Showdiv3()" onmouseout="Hidderdiv3()"/></a>		
		<a href="#"><img src="img/phone.png" onmouseover="Showdiv4()" onmouseout="Hidderdiv4()"/></a>								
	</div>
	<div id="sidebar_text">
		<div class="wenzi" id="text1">个人信息</div>
		<div class="wenzi" id="text2">我的收藏</div>
		<div class="wenzi" id="text5">消息通知</div>
		<div class="wenzi" id="text3">我的订单</div>
		<div class="wenzi" id="text4">
			<img src="img/chat.jpg" id="chat"/>
		</div>
	</div>
	<script type="text/javascript" src="js/sidebar.js"></script>
	<script src="js/shopdetail.js" type="text/javascript" charset="utf-8"></script>
 	</body>
</html>