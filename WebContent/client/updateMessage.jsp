<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>图书共享社区</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/client/css/01-1.css" type="text/css" />
</head>
<style>
       .bottom{
                 position:fixed;
                 bottom:0;
}
</style>
	<body>
	<div class="wrapper">
			<!-- 导航栏--头部 -->
			<div class="header">
				<span color="#FFFFFF">欢迎使用共享系统</span>	
			</div>
				<div class="main">
			<!-- 修改留言的表单 -->
			<form action="${pageContext.request.contextPath}/manager/UpdateMessageServlet" method="post">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h2 style="color:#FFFFFF">---------请修改信息---------</h2>
				<br/>
				<hr color="#FFFFFF" size="3" />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3 style="color:#FFFFFF">信息：</h3><input type="hidden" value="${letter.id}" name="id" readonly/>
				<br />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea style="width: 583px; height: 418px;" name="content">${letter.message}</textarea>
				<br />
				<hr color="#FFFFFF" size="3" />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input id="t-btn" type="submit" value="确认修改" />
			</form>
					<div class="back"><a href="${pageContext.request.contextPath}/showMyMessage">返回</a>
					</div>
				
      </div>
      </div>
      <div class="bottom">
	<jsp:include page="foot.jsp" />
	</div>
	</body>
</html>
	
			
			
