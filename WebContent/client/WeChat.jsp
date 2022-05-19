<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>图书共享社区</title>
	<%--导入css --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/client/css/main.css" type="text/css" />
</head>
<style>
       .bottom{
                 position:fixed;
                 bottom:0;
}
</style>
	<body class="main">
		
		<!--
			整个页面的容器
		-->
<jsp:include page="head.jsp" />
<jsp:include page="menu_search.jsp" />
			<div class="main">
				<!-- 添加留言 -->
				<div class="add">
				<h1>图书共享社区</h1>
				<br>
				<a href="${pageContext.request.contextPath}/client/userAddMessage.jsp">
						我要发帖子
				</a>
				</div>
				<table cellspacing="0" class="listcontent">
						<tr>
							<td>
								<h1>图书共享信息</h1>
								<hr />
								<table cellspacing="0" class="booklist">
													<!-- 留言信息 -->
				<c:forEach items="${list}" var="message">
				<div class="main_box">
					
					<!-- 操作按钮 -->
					<div class="btn">
						<button onclick="del(${message.id})">删除</button>
						<button onclick="ready(${message.id)}">修改</button>
					</div>
					
					
					<!-- 头像 -->
					<div id="picture">
						
					</div>
					<!-- 姓名 -->
					<div id="pname">
						${message.user }
					</div>
					<!-- 个人留言 -->
					<div id="content">
						${message.message }
					</div>		
				</div>
			</c:forEach>
								</table>
			</div>
		<script>
			function del(a){
				
				if(confirm("确定要删除吗")){
					//将id传到Servlet将当前留言删除
					window.location.href=
						"${pageContext.request.contextPath}/delete.do?id="+a;
				}
				
			}
			function ready(b){
				if(confirm("确定要修改吗")){
					//将id传到Servlet中，根据id查询，并展示到update.jsp
					window.location.href=
						"${pageContext.request.contextPath}/ready.do?id="+b;
				}
			}
		</script>
		<div class="bottom">
	    <jsp:include page="foot.jsp" />
	    </div>

		
	</body>
</html>
