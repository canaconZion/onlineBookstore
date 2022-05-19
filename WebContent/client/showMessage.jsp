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
				<span>欢迎使用共享系统</span>	
			</div>
				<div class="main">
				<c:forEach items="${list}" var="l">
				    <div class="main_box">
					<div id="pname"><table><tr><td><h3 style="color:white"><img src="${pageContext.request.contextPath }/client/images/head2(1).png" width="60" height="60" />&nbsp;用户:&nbsp;<a href="${pageContext.request.contextPath}/userInformation?user=${l.user}"> ${l.user}</a></h3></td></tr></table></div>
					<div id="content">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${l.message}&nbsp;&nbsp;&nbsp;&nbsp;<br/><br/>发布时间: ${l.ptime}</div>
					</div>			
				</c:forEach>
				
					<div class="say"><a href="${pageContext.request.contextPath}/messagePermission">我要发帖子</a><br/></div>
					<div class="showme"><a href="${pageContext.request.contextPath}/showMyMessage">只看我发表的</a><br/></div>
					<div class="showall"><a href="${pageContext.request.contextPath}/showMessages?id=user">看全部</a>
					<div class="back"><a href="${pageContext.request.contextPath}/index.jsp">回首页</a>
					</div>
				
      </div>
      </div>
      </div>
      <div class="bottom">
	<jsp:include page="foot.jsp" />
	</div>
	</body>
</html>
