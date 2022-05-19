<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>菜单</title>
	<link href="${pageContext.request.contextPath}/admin/css/left.css" rel="stylesheet" type="text/css">
</head>
	<body>
		<table width="100" border="0" cellspacing="0" cellpadding="0">
		  <tr>
		    <td height="12"></td>
		  </tr>
		</table>
		<table width="100%" border="0">
			  <tr>
			  	<td><a href="${pageContext.request.contextPath}/listIp" target="mainFrame" class="left_list">登录记录</a></td>
			  </tr>
			  <tr>
			  	<td><a href="${pageContext.request.contextPath}/listProduct" target="mainFrame" class="left_list">商品管理</a></td>
			  </tr>
				<tr>
			  	<td><a href="${pageContext.request.contextPath}/admin/products/saleList.jsp" target="mainFrame" class="left_list">销售榜单查询</a></td>
			  </tr>  
			  <tr>
			  	<td><a href="${pageContext.request.contextPath}/admin/products/download.jsp" target="mainFrame" class="left_list">销售榜单下载</a></td>
			  </tr> 
			  <tr>
			  	<td><a href="${pageContext.request.contextPath}/findOrders" target="mainFrame" class="left_list">订单管理</a></td>
			  </tr>
			  <tr>
			  	<td><a href="${pageContext.request.contextPath}/manager/ListNoticeServlet" target="mainFrame" class="left_list">公告管理</a></td>
			  </tr>
			  <tr>
			  	<td><a href="${pageContext.request.contextPath}/listUser" target="mainFrame" class="left_list">用户管理</a></td>
			  </tr>
			  <tr>
			  	<td><a href="${pageContext.request.contextPath}/showMessages?id=admin" target="mainFrame" class="left_list">信息管理</a></td>
			  </tr>
		</table>
	</body>
</html>
