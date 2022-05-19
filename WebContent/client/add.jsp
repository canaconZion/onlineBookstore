<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加留言</title>
		<link rel="stylesheet" href="css/main.css" type="text/css" />
	</head>
	<jsp:include page="head.jsp" />
	<jsp:include page="menu_search.jsp" />
	<body class="main">
		<div class="listcontent">
			<div class="title">
				请输入您要发送的信息
			</div>
			<form action="${pageContext.request.contextPath }/save.do" method="post">
				姓名：
				<br />
				<input name="name" id="t-name" type="text" placeholder="请输入您的用户名" />
				<hr color="#888" size="2">
				内容：
				<br />
				<textarea name="content" id="t-txt" class="content">
				</textarea>
				<hr color="#888" size="2">
				<input id="t-btn" type="submit" value="发表" />
			</form>
		</div>
		<jsp:include page="foot.jsp" />
	</body>
</html>
    