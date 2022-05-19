<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="http://www.itcast.cn/tag"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加留言</title>
		<link rel="stylesheet" href="css/02.css" />
	</head>
	<style>
       .bottom{
                 position:fixed;
                 bottom:0;
}
</style>
	<body>
		<div class="wrapper">
			<div class="title">
				请输入您要发贴的信息
			</div>
			<form id="userAction_save_do" name="Form1" action="${pageContext.request.contextPath}/manager/AddMessageServlet" method="post">
				内容：
				<br />
				<textarea name="Message" id="t-txt" class="content"></textarea>
				<hr color="#888" size="2">
				<input id="t-btn" type="submit" value="发表" />
				<input id="t-btn" type="reset" value="重置" class="button_cancel">
				<input id="t-btn" class="button_ok" type="button" onclick="history.go(-1)" value="返回" />
			</form>
		</div>
		<div class="bottom">
	<jsp:include page="foot.jsp" />
	</div>
	</body>
</html>