<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>传智书城注册页面</title>
<%--导入css和js --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/main.css" type="text/css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/client/js/form.js"></script>
<script type="text/javascript">
	function changeImage() {
		// 改变验证码图片中的文字
		document.getElementById("img").src = "${pageContext.request.contextPath}/imageCode?time="
				+ new Date().getTime();
	}
</script>
</head>

<body class="main">
<!-- 1.网上书城顶部 start -->
       <%@include file="head.jsp"%>
<!-- 网上书城顶部  end -->
<!--2. 网上书城菜单列表  start -->
       <%@include file="menu_search.jsp" %>
<!-- 网上书城菜单列表  end -->
<!-- 3.网上书城用户注册  start -->
	<div id="divcontent">
		<form action="${pageContext.request.contextPath}/updateUser" method="post" onsubmit="return checkForm();">
			<table width="850px" border="0" cellspacing="0">
				<tr>
					<td style="padding: 30px"><h1>修改个人信息</h1>
						<table width="70%" border="0" cellspacing="2" class="upline">
							<tr>
								<td style="text-align: right; width: 20%">邮箱：</td>
								<td style="padding-left:20px">${user.email  }</td>
								</td>
							</tr>
							<tr>
								<td style="text-align: right">用户名：</td>
								<td style="padding-left:20px">${user.username }</td>
								</td>
							</tr>
							<tr>
								<td style="text-align: right">新密码：</td>
								<td><input type="password" class="textinput"  id="password" name="password" onkeyup="checkPassword();"/></td>
								<td><span id="passwordMsg"></span><font color="#999999">密码请设置6-16位字符</font></td>
							</tr>
							<tr>
								<td style="text-align: right">重复密码：</td>
								<td>
								<input type="password" class="textinput"  id="repassword" name="repassword" onkeyup="checkConfirm();"/>
								</td>
								<td><span id="confirmMsg"></span>&nbsp;</td>
							</tr>
							<tr>
								<td style="text-align: right">性别：</td>
								<td colspan="2">&nbsp;&nbsp;
                                <input type="radio" name="gender" value="男" checked="checked" /> 男
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="gender" value="女" /> 女
								</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td style="text-align: right">联系电话：</td>
								<td colspan="2">
								<input type="text" class="textinput"
									style="width: 350px" name="telephone" value="${user.telephone} "/>
								</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td style="text-align: right">个人介绍：</td>
								<td colspan="2">
								<textarea class="textarea" name="introduce">${user.introduce}</textarea>
								</td>
								<td>&nbsp;</td>
							</tr>
						</table>
						<br/>
						<table width="70%" border="0" cellspacing="0">
							<tr>
							<td>
							<a href="#" class="btn btn-default" onclick="history.go(-1)">返回</a>
							<td/>
							<td style="padding-top: 20px; text-align: center">
								<input type="image" src="images/signup.gif" name="submit" border="0" width="140" height="35"/>
							</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</div>
	
 <!-- 网上书城用户注册  end -->
<!--4. 网上书城下方显示 start -->
     <%@ include file="foot.jsp" %>
<!-- 网上书城下方显示 start -->
</body>
</html>
