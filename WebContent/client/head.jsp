<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="cn.itcast.itcaststore.domain.User"%>
<head>
<title>head</title>
<link href="${pageContext.request.contextPath}/client/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/client/css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="${pageContext.request.contextPath}/client/js/jquery.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script type="text/javascript">
//退出确认框
function confirm_logout() {   
    var msg = "您确定要退出登录吗？";   
    if (confirm(msg)==true){   
    return true;   
    }else{   
    return false;   
    }   
} 
</script>
</head>
<div class="header">
<div class="header-top">
			<div class="container">
				<div class="header-grid">
					<ul>
						<li><a href="${pageContext.request.contextPath}//BookPermission" class="scroll">图书上传</a></li>
						<li><a href="${pageContext.request.contextPath}/client/cart.jsp" class="scroll">购物车</a></li>
						<li><a href="${pageContext.request.contextPath}/html/html/helpPage.jsp" class="scroll">帮助中心</a></li>
						<li><a href="${pageContext.request.contextPath}/myAccount" class="scroll">我的账户</a></li>						
					</ul>
				</div>
				<div class="header-grid-right">
				    <a href="${pageContext.request.contextPath}/index.jsp" class="sign-in">Bisheng</a> 
					<label>|</label>
					<a href="${pageContext.request.contextPath}/logout" class="sign-up" onclick="javascript:return confirm_logout()">用户退出</a>
					<a href="${pageContext.request.contextPath}/myAccount" ><h5 style="color:white">欢迎${user.username}登录！</h5></a>
					<!-- <a href="${pageContext.request.contextPath}/client/register.jsp" class="sign-up">用户注册</a>-->
					
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>

</div>
