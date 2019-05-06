<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>登录页面</title>
		<link rel="stylesheet" type="text/css" href="css/loading.css" />
	</head>

	<body>
		<div id="header">
			<div id="top-left">让生活跟精彩</div>
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

				<div class="backstage">
					<a href="register.jsp">免费注册</a>
				</div>

				<div class="backstage">
					<a href="index.jsp">返回首页</a>
				</div>
			</div>
		</div>
		<div id="warp">
			<form action="<%=request.getContextPath()%>/login" method="post" onsubmit="return (check_name()+check_pwd())==2">
				<h3>欢迎登录</h3>
				<span>账号：</span><br />
				<input type="text" name="username" id="username" placeholder="请输入账号" class="inputs" value="${username}" onblur="check_name()" />
				<div id="name_msg">3-10个字母、数字、下划线</div>
				<br />
				<span>密码：</span><br />
				<input type="password" name="password" id="password" placeholder="请输入密码" class="inputs" onblur="check_pwd()" />
				<div id="pwd_msg">6-20个字母、数字、下划线</div>
				<br />
				<input type="submit" value="登录" id="load" onclick="f1()" />
				<a href="forgetpwd.html" id="forgetpwd">忘记密码？</a>
				<a href="register.jsp" id="register">立即注册</a>
			</form>
		</div>
	</body>
	<script src="js/loading.js" type="text/javascript" charset="utf-8"></script>

</html>