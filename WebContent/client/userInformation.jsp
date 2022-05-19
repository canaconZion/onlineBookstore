<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="http://www.itcast.cn/tag"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>电子书城</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/client/css/main.css" type="text/css" />
</head>
<body class="main">
	<p:user />
	<jsp:include page="head.jsp" />
	<jsp:include page="menu_search.jsp" />
	<div id="divpagecontent">
					<table cellspacing="0" class="infocontent">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="2" class="upline">
								<h2>用户信息</h2>
									<tr>
										<td style="text-align:right; width:20%">会员邮箱：</td>
										<td style="width:40%; padding-left:20px">${puser.email }</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td style="text-align:right">会员名：</td>
										<td style="padding-left:20px">${puser.username }</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td style="text-align:right">性别：</td>
										<td style="padding-left:20px">${puser.gender  }</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td style="text-align:right">联系电话：</td>
										<td style="padding-left:20px">${puser.telephone  }</td>
										<td>&nbsp;</td>
									</tr>					
									<tr>
										<td style="text-align:right">简介：</td>
										<td style="padding-left:20px">${puser.introduce  }</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td style="text-align:right">&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
								</table>
								<p style="text-align:center">
									<a href="#"  onclick="history.go(-1)">返回</a>
								</p>
								<p style="text-align:center">&nbsp;</p>
							</td>
						</tr>
					</table>
	</div>
	<jsp:include page="foot.jsp" />
</body>
</html>
