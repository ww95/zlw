<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>预定支付页面</title>
        <link rel="stylesheet" type="text/css" href="css/shopping.css"/>
    </head>
    <body>
    <!--头部-->
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
	<!--top部分-->
	<div id="top">
			<img src="img/logo.png"/>						
			<span id="num3" class="num">
				03 | 订单完成
			</span>
			<span id="num2" class="num">
				02 | 在线支付
			</span>
			<span id="num1" class="num">
				01 | 填写订单
			</span>
	</div>
	
	<div id="warp">	
		<!--填写订单部分-->
		<div id="shop_msg">
			<div id="msg">		
			<form>
				<table>
					<h3>出游信息</h3>
					<tr>
						<td>订单号</td>
						<td><span id="order_number">0000</span></td>
					</tr>
					<tr>
						<td>目的地</td>
						<td><span id="destination">三亚</span></td>
					</tr>
					<tr>
						<td>出发城市</td>
						<td>湖南娄底</td>
					</tr>
					<tr>
						<td>出发日期</td>
						<td><input type="date" name="date" id="date" value="" /></td>
					</tr>
					<tr>
						<td>出游人数</td>
						<td>						
							<select id="selects1">
								<option value ="0">0</option>
							    <option value ="1">1</option>
							    <option value ="2">2</option>
							    <option value ="3">3</option>
							    <option value ="4">4</option>
							    <option value ="5">5</option>
							    <option value ="6">6</option>
							    <option value ="7">7</option>
							    <option value ="8">8</option>					    
							</select>成人&nbsp;	&nbsp;	&nbsp;				
							<select id="selects2">
								<option value ="0">0</option>
							    <option value ="1">1</option>
							    <option value ="2">2</option>
							    <option value ="3">3</option>
							    <option value ="4">4</option>
							    <option value ="5">5</option>
							    <option value ="6">6</option>
							    <option value ="7">7</option>
							    <option value ="8">8</option>
							</select>儿童
						</td>
					</tr>
				</table>
				<div id="goodspices">
					成人:￥<span id="man_pices">20</span>&nbsp;&nbsp;&nbsp;&nbsp;
					儿童:￥<span id="boy_pices">10</span>
				</div>
				<table>
					<h3>联系人信息</h3>
					<tr>
						<td>联系人：</td>
						<td><input type="text" name="linkman" id="linkman" value="" placeholder="如：张三" onchange="check_linkman()"/></td>
					</tr>
					<tr>
						<td>联系电话：</td>
						<td><input type="text" name="phone" id="phone" value="" placeholder="请输入联系电话" onchange="check_phone()"/></td>
					</tr>
				</table>
				<table>
					<h3>游客[1]信息</h3>
					<tr>
						<td>中文姓名：</td>
						<td><input type="text" name="hikiname1" id="hikiname1" value="" placeholder="如：张三" onchange="check_hikiname1()"/></td>
					</tr>
					<tr>
						<td>身份证号码：</td>
						<td><input type="text" name="idcard1" id="idcard1" value="" placeholder="请输入身份证号码" min="18" onchange="check_idcard1()"/></td>
					</tr>
					<tr>
						<td>手机号码：</td>
						<td><input type="text" name="hikiphone1" id="hikiphone1" value="" placeholder="请输入手机号码"/ onchange="check_hikiphone1()"/></td>
					</tr>
					
				</table>
				<table>
					<h3>游客[2]信息(可不填)</h3>
					<tr>
						<td>中文姓名：</td>
						<td><input type="text" name="hikiname2" id="hikiname2" value="" placeholder="如：张三"/ onchange="check_hikiname2()"></td>
					</tr>
					<tr>
						<td>身份证号码：</td>
						<td><input type="text" name="idcard2" id="idcard2" value="" placeholder="请输入身份证号码" onchange="check_idcard2()"/></td>
					</tr>
					<tr>
						<td>手机号码：</td>
						<td><input type="text" name="hikiphone2" id="hikiphone2" value="" placeholder="请输入手机号码"/ onchange="check_hikiphone2()"/></td>
					</tr>					
				</table>									
			</form>
			</div>
			<div id="pices">
				<h4>结算信息</h4>
				<table>
					<h5>出游费用</h5>
					<tr>
						<td>成人</td>
						<td>￥<span id="man">0</span></td>
					</tr>
					<tr>
						<td>儿童</td>
						<td>￥<span id="boy">0</span></td>
					</tr>
					<tr>
						<td>总价</td>
						<td>￥<span id="sum">0</span></td>
					</tr>
				</table>
			</div>
		
			<div id="bottom_btn">
	
				<input type="checkbox" name="" id="htong" value="" />我已阅读<a onclick="showHt()">旅游合同</a>和<a onclick="showHt()">安全提示</a>
				<span id="shop_btn" onclick="shop()">立即预定</span>
			</div>
		</div>
		<!--支付部分-->
		<div id="payment">
			<table cellpadding="" border="1">
				<h4>订单信息</h4>
				<tr>
					<td>订单号</td>
					<td><span id="order_number2">0000</span></td>
				</tr>
				<tr>
					<td>目的地</td>
					<td><span id="destination">三亚</span></td>
				</tr>
				<tr>
					<td>总价</td>
					<td><span id="sum2">0</span></td>
				</tr>				
			</table>
			<div id="pay">
				<h4>支付方式</h4>
				<button id="chatpay" onclick="showchat()">微信支付</button>
				<button id="chatpay" onclick="showali()">支付宝支付</button>
				<div id="chat_pay" class="img">
					<img src="img/pay_chat.jpg" />
				</div>
				<div id="ali_pay"  class="img">
					<img src="img/pay_ali.jpg" />
				</div>
			</div>
		</div>
		<!--支付成功部分-->
		<div id="finish_pay">
			<h1>支付完成，若有疑问，请联系客户</h1>
			<h3>联系电话：***-****-****</h3>
			<h5>前往<a href="myorder.html">订单页面</a>。</h5>
		</div>
	</div>
	
	<!--合同部分-->
	<div id="hetong">		
		<button onclick="hiddenHt()">X</button>
		<h4>订单合同</h4>
		<p>1.  本合同为示范文本，供中华人民共和国境内（不含港、澳、台地区）经营 出境旅游业务或者边境旅游业务的旅行社（以下简称“出境社 ”） 与出境旅 游者（以下简称“旅游者 ”） 之间签订团队出境包价旅游（不含赴台湾地区 旅游）合同时使用。</p> 
		<p>2.  双方当事人应当结合具体情况选择本合同协议条款中所提供的选择项，空格处应当以文字形式填写完整。</p>
		<p>3.  双方当事人可以书面形式对本示范文本内容予以变更或者补充，但变更或者补充的内容，不得减轻或者免除应当由旅行社承担的责任。</p>		
		<p>4.  本示范文本由国家旅游局和国家工商行政管理总局共同制定、 解释，在全国范围内推行使用。</p>
	</div>
	<!--尾部-->
	<div id="footer">
		<span>返回首页</span>
			<span>代理合作</span>
			<span>加盟合作</span>
			<span>酒店加盟</span>
			<span>隐私政策</span>
			<span>友情链接</span>
			<span id="bottom">Copyright@2019-2019,index.com.All right reserved</span>
			<p>ICP证：湘**-********</p> 
	</div>
 	</body>
	<script type="text/javascript" src="js/shopping.js" ></script>
</html>