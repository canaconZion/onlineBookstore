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
								
				<c:forEach items="${ulist}" var="l">

					<div class="main_box">
					<div class="btn">
						<button onclick="del(${l.id})">删除</button>
						<button onclick="ready(${l.id})">修改</button>
					</div>
					<div id="pname">用户名: ${l.user}</div>
					<div id="content">信息: ${l.message}&nbsp;&nbsp;&nbsp;<br/><br/>发布时间: ${l.ptime}</div>
					</div>
				</c:forEach>
				
				<div class="add">
					
					<div class="say"><a href="${pageContext.request.contextPath}/client/userAddMessage.jsp">我要发帖子</a><br/></div>
					<div class="showme"><a href="${pageContext.request.contextPath}/showMyMessage">只看我发表的</a><br/></div>
					<div class="showall"><a href="${pageContext.request.contextPath}/showMessages?id=user">看全部</a>
					</div>
				</div>
				</div>
				</div>
     <div class="bottom">
	<jsp:include page="../foot.jsp" />
	</div>
			<script>
			function del(a){
				
				if(confirm("确定要删除吗")){
					//将id传到Servlet将当前留言删除
					window.location.href=
						"${pageContext.request.contextPath}/manager/DeleteMessageServlet?id="+a+"&state=user";
				}
				
			}
			function ready(b){
				if(confirm("确定要修改吗")){
					//将id传到Servlet中，根据id查询，并展示到update.jsp
					window.location.href=
						"${pageContext.request.contextPath}/manager/GetMessageServlet?id="+b;
				}
			}
		</script>
	</body>
</html>
