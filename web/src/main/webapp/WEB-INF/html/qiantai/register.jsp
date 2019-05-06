<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>注册</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/register.css"/>
	</head>
	<body>
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
			
			<div class="backstage">
				<a href="index.jsp">返回首页</a>
			</div>
			
			<div class="backstage">
				<a href="loading.jsp" style="color: blue;">您好，请登录</a>
			</div>
						
		</div>
	</div>
		<div id="warp">	
			<form action="<%=request.getContextPath()%>/register" method="post" onsubmit="return (check_username()+check_pwd()+check_repwd()+check_name()+check_phone())==5">
				<table border="2" cellspacing="" cellpadding="">
				<tr>
					<td colspan="2" style="text-align: center;">注册</td>
				</tr>									
				<tr>
					<td>账号</td>
					<td>
						<input type="text" name="username" id="username" value="" onblur="check_username()"/>
						<div id="username_msg">3-10个字母、数字、下划线</div>
					</td>
				</tr>
				<tr>
					<td>密码</td>
					<td>
						<input type="password" name="password" id="password" onblur="check_pwd()"/>
						<div id="pwd_msg">6-16个字母、数字、下划线</div>
					</td>
				</tr>
				<tr>
					<td>确认密码</td>
					<td>
						<input type="password" name="repassword" id="repassword" onblur="check_repwd()"/>
						<div id="repwd_msg">6-16个字母、数字、下划线</div>
					</td>
				</tr>
				<tr>
					<td>姓名</td>
					<td>
						<input type="text" name="nick_name" id="name" onblur="check_name()"/>
						<div id="name_msg">2-4个中文</div>
					</td>
				</tr>
				<tr>
					<td>性别</td>
					<td>
						<input type="radio" name="sex" id="sex" value="1" /><label>男</label>&nbsp;&nbsp;
						<input type="radio" name="sex" id="sex1" value="0"/><label>女</label>
						<div id="sex_msg" class="error_msg">必选择一个</div>
					</td>
				</tr>
				<tr>
					<td>电话号码</td>
					<td>
						<input type="text" name="tellphone" id="phone" value="" onblur="check_phone()"/>
						<div id="phone_msg">11位电话号码</div>
					</td>
				</tr>

                    <tr>
                        <td>身份证号码</td>
                        <td>
                            <input type="text" name="id_card" id="idCard" value="" onblur="check_idcard()"/>
                            <div id="idCard_msg">18位身份证号码</div>
                        </td>
                    </tr>
                    <tr>
                        <td>地址</td>
                        <td>
                            <input type="text" name="address" id="address" value="" onblur="check_address()"/>
                            <div id="address_msg">常用地址</div>
                        </td>
                    </tr>
                    <tr>
					<td colspan="2">
					<input type="submit" value="注册" class="buttons" onclick="register()"/>
					<input type="reset" value="重置" class="buttons"/>
					</td>
					<script src="js/register.js" type="text/javascript" charset="utf-8"></script>
				</tr>
				</table>
			</form>
		</div>
		<div id="register_finish">
			注册成功，<a href="loading.jsp">立即登录</a>!
		</div>
	</body>
	
</html>
