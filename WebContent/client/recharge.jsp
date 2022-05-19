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
		<table width="100%" border="0" cellspacing="0">
			<tr>
				<td width="25%">
					<table width="100%" border="0" cellspacing="0"
						style="margin-top:30px">
						<tr>
							<td class="listtitle">我的帐户</td>
						</tr>
						<tr>
							<td class="listtd">
								<img src="${pageContext.request.contextPath }/client/images/icon1.png" width="15" height="10" />&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="${pageContext.request.contextPath }/client/modifyuserinfo.jsp">用户信息</a>
							</td>
						</tr>
						<tr>
							<td class="listtd">
								<img src="${pageContext.request.contextPath }/client/images/icon2.png" width="15" height="10" />&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="${pageContext.request.contextPath}/findOrderByUser">订单查询</a>
							</td>
						</tr>
						<tr>
							<td class="listtd">
								<img src="${pageContext.request.contextPath }/client/images/icon1.png" width="15" height="10" />
								&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="${pageContext.request.contextPath }/findProductByUser">查看我上传的书籍</a>
							</td>
						</tr>
						<tr>
							<td class="listtd">
								<img src="${pageContext.request.contextPath }/client/images/icon2.png" width="15" height="10" />
								&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="${pageContext.request.contextPath}/client/myBalance.jsp">账户余额</a>
							</td>
						</tr>
						<tr>
							<td class="listtd">
								<img src="${pageContext.request.contextPath }/client/images/icon3.png" width="15" height="10" />&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="${pageContext.request.contextPath}/logout">用戶退出</a>
							</td>
						</tr>
					</table>
				</td>
				<td>
					<div style="text-align:right; margin:5px 10px 5px 0px">
						<a href="${pageContext.request.contextPath }/index.jsp">首页</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;
						<a href="${pageContext.request.contextPath }/client/myAccount.jsp">&nbsp;我的帐户</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;账户充值
					</div>
					<form action="${pageContext.request.contextPath }/rechargeServlet" method="post" >
					<table cellspacing="0" class="infocontent">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="2" class="upline">
									<tr>
									<h3>请选择充值金额</h3>
									<br/>
									<br/>
										<div style="margin-bottom: 20px;">
											<input id="ICBC-NET-B2C" type="radio" name="yh"
												value="10" checked="checked" />&nbsp;&nbsp;<img src="${pageContext.request.contextPath }/client/images/10.png"  width="100" height="25" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input id="ICBC-NET-B2C" type="radio" name="yh"
												value="50"  />&nbsp;&nbsp;<img src="${pageContext.request.contextPath }/client/images/50.png"  width="100" height="25"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input id="ICBC-NET-B2C" type="radio" name="yh"
												value="100"  />&nbsp;&nbsp;<img src="${pageContext.request.contextPath }/client/images/100.png"  width="100" height="25"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										</br>
										<div style="margin-bottom: 20px;">
											<input id="ICBC-NET-B2C" type="radio" name="yh"
												value="200"/>&nbsp;&nbsp;<img src="${pageContext.request.contextPath }/client/images/200.png" width="100" height="25" />&nbsp;&nbsp;&nbsp;&nbsp;
												<input id="ICBC-NET-B2C" type="radio" name="yh"
												value="300"  />&nbsp;&nbsp;<img src="${pageContext.request.contextPath }/client/images/300.png"  width="100" height="25"/>&nbsp;&nbsp;&nbsp;&nbsp;
												<input id="ICBC-NET-B2C" type="radio" name="yh"
												value="500"  />&nbsp;&nbsp;<img src="${pageContext.request.contextPath }/client/images/500.png" width="100" height="25" />&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
									</tr>								
								</table>
								<div style="margin: 40px;">
				<INPUT TYPE="submit" value="确定充值金额"  style="width:100px;height:25px">
			</div>
								<p style="text-align:center">&nbsp;</p>
							</td>
						</tr>
					</table>
					</form>
				</td>
			</tr>
		</table>
	</div>
	<jsp:include page="foot.jsp" />
</body>
</html>
