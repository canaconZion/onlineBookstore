<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>图书共享社区</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/client/css/01.css" type="text/css" />
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
				
				<span>欢迎使用共享系统</span>
				
				
			</div>
				<div class="main">
				
				<c:forEach items="${list}" var="l">
				<div class="main_box">
					<div id="pname">用户id: ${l.id}</div>
					<div id="pname">用户名: ${l.user}</div>
					<div id="content">信息: ${l.message}</div>
					<div id="content">发布时间: ${l.ptime}</div>
				</div>
				</c:forEach>
				<div class="add">
					
					<div class="say" onclick="JavaScript:window.location.href='userAddMessage.jsp';">我要发帖子</div>
				</div>
      </div>
      </div>
      <div class="bottom">
	<jsp:include page="../foot.jsp" />
	</div>
	</body>
</html>
