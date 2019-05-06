<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>娄底市阳光旅游电商平台</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/index.css"/>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/pic.js"></script>
	</head>
	<body>
	<!--首部栏-->
	<div id="header">
		<div id="top-left">
			让生活更精彩	
		</div>
		<div id="top-right">
			<div class="backstage">
				<a href="msgboard.html">留言板</a>
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
			<c:if test="${user==null}">
				<div class="backstage">
					<a href="register.jsp">免费注册</a>
				</div>

				<div class="backstage">
					<a href="loading.jsp" style="color: blue;">您好，请登录</a>
				</div>
			</c:if>
			<c:if test="${user!=null}">
				<div class="backstage">
					<a href="loading.jsp" style="color: blue;">个人中心</a>
				</div>
				<div class="backstage">
						${user.username}
					<c:if test="${user.sex == 0}">
						女士
					</c:if>
					<c:if test="${user.sex == 1}">
						先生
					</c:if>
				</div>
			</c:if>
		</div>
	</div>
	
	<!--搜索栏-->
	<div id="search">		
		<a href="index.jsp"><img src="img/logo.png" style="width: 60px;height: 60px;" alt="logo" id="logo"/></a>
		<div id="box">
			<input type="text" name="search" id="s_box" placeholder="请输入景点名、主题或关键词" />
			<div id="s_button">搜索</div>
		</div>
		
	</div>
	
	<!--导航（商品分类）栏-->
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
	
	<!--内容-->
	<div id="content">
		<div class="wrap" id='wrap'>
			<ul id="pic">
			<li><img src="<%=request.getContextPath()%>/img/pic1.jpg" alt="pic1" class="pic"></li>
			<li><img src="<%=request.getContextPath()%>/img/pic2.jpeg" alt="pic2" class="pic"></li>
			<li><img src="<%=request.getContextPath()%>/img/pic3.jpg" alt="pic3" class="pic"></li>
			<li><img src="<%=request.getContextPath()%>/img/pic4.jpg" alt="pic4" class="pic"></li>
			<li><img src="<%=request.getContextPath()%>/img/pic5.jpg" alt="pic5" class="pic"></li>
			</ul>
			<ol id="list">
			<li class="on">1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
			<li>5</li>
			</ol>
		</div>
		<div id="classify">
			<div id="con1" class="cons">
				<h3>热门景点</h3>
				<div class="imgs">
					<img src="<%=request.getContextPath()%>/img/con1_1.jpg" alt="con1_1" id="con1_1" class="photos"/>
					<img src="<%=request.getContextPath()%>/img/con1_2.jpg" alt="con1_2" id="con1_2" class="photos"/>
					<img src="<%=request.getContextPath()%>/img/con1_3.jpg" alt="con1_3" id="con1_3" class="photos"/>
				</div>
				<div class="texts">
					<span class="products">三亚</span>
					<span class="products">张家界</span>
					<span class="products">武夷山</span>
				</div>
			</div>
			<div id="con2" class="cons">
				<h3>周边景点</h3>
				<div class="imgs">
					<img src="<%=request.getContextPath()%>/img/con2_1.jpg" alt="con2_1" id="con2_1" class="photos"/>
					<img src="<%=request.getContextPath()%>/img/con2_2.jpg" alt="con2_2" id="con2_2" class="photos"/>
					<img src="<%=request.getContextPath()%>/img/con2_3.jpg" alt="con2_3" id="con2_3" class="photos"/>
				</div>
				<div class="texts">
					<span class="products">梅山龙宫</span>
					<span class="products">湄江风景区</span>
					<span class="products">紫鹊界梯田</span>
				</div>
			</div>
			<div id="con3" class="cons">
				<h3>一日游</h3>
				<div class="imgs">
					<img src="<%=request.getContextPath()%>/img/con3_1.jpeg" alt="con3_1" id="con3_1" class="photos"/>
					<img src="<%=request.getContextPath()%>/img/con3_2.jpg" alt="con3_2" id="con3_2" class="photos"/>
					<img src="<%=request.getContextPath()%>/img/con3_3.jpg" alt="con3_3" id="con3_3" class="photos"/>
				</div>
				<div class="texts">
					<span class="products">都江堰</span>
					<span class="products">八达岭长城</span>
					<span class="products">西安秦始皇陵</span>
				</div>
			</div>
			<div id="con4" class="cons">
				<h3>周末游</h3>
				<div class="imgs">
					<img src="img/con4_1.jpg" alt="con4_1" id="con4_1" class="photos"/>
					<img src="img/con4_2.jpg" alt="con4_2" id="con4_2" class="photos"/>
					<img src="img/con4_3.jpg" alt="con4_3" id="con4_3" class="photos"/>
				</div>
				<div class="texts">
					<span class="products">泰山</span>
					<span class="products">衡山</span>
					<span class="products">华山</span>
				</div>
			</div>
			<div id="con5" class="cons">
				<h3>跟团游</h3>
				<div class="imgs">
					<img src="img/con5_1.jpg" alt="con5_1" id="con5_1" class="photos"/>
					<img src="img/con5_2.jpg" alt="con5_2" id="con5_2" class="photos"/>
					<img src="img/con5_3.jpg" alt="con5_3" id="con5_3" class="photos"/>
				</div>
				<div class="texts">
					<span class="products">西北青海湖</span>
					<span class="products">云南香格里拉</span>
					<span class="products">新疆吐鲁番</span>
				</div>
			</div>
			<div id="con6" class="cons">
				<h3>自由行</h3>
				<div class="imgs">
					<img src="img/con6_1.jpg" alt="con6_1" id="con6_1" class="photos"/>
					<img src="img/con6_2.jpg" alt="con6_1" id="con6_2" class="photos"/>
					<img src="img/con6_3.jpg" alt="con6_1" id="con6_3" class="photos"/>
				</div>
				<div class="texts">
					<span class="products">长隆</span>
					<span class="products">丽江</span>
					<span class="products">长白山</span>
				</div>
			</div>
			<div id="con7" class="cons">
				<h3>出国游</h3>
				<div class="imgs">
					<img src="img/con7_1.jpg" alt="con7_1" id="con7_1" class="photos"/>
					<img src="img/con7_2.jpg" alt="con7_2" id="con7_2" class="photos"/>
					<img src="img/con7_3.jpg" alt="con7_3" id="con7_3" class="photos"/>
				</div>
				<div class="texts">
					<span class="products">美国</span>
					<span class="products">英国</span>
					<span class="products">日本</span>
				</div>
			</div>
			<div id="con8" class="cons">
				<h3>定制旅游</h3>
				<div class="imgs">
					<img src="img/con8_1.jpg" alt="con8_1" id="con8_1" class="photos"/>
					<img src="img/con8_2.jpg" alt="con8_2" id="con8_2" class="photos"/>
					<img src="img/con8_3.jpg" alt="con8_3" id="con8_3" class="photos"/>
				</div>
				<div class="texts">
					<span class="products">个人定制</span>
					<span class="products">家庭定制</span>
					<span class="products">公司定制</span>
				</div>
			</div>
		</div>
	</div>
	
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
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/sidebar.js"></script>
	</body>
</html>
