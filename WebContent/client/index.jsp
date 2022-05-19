<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>线上共享书城</title>
	<%-- 导入css --%>
    <link href="${pageContext.request.contextPath}/client/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${pageContext.request.contextPath}/client/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <script src="${pageContext.request.contextPath}/client/js/jquery.min.js"></script>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/main.css" type="text/css" />
</head>

<body class="main">
	<%@include file="head.jsp"%>
	<%@include file="menu_search.jsp" %>
	<div class="container">
		<div class="women-in">
			<div class="col-md-9 col-d">
				<div class="banner">
					<div class="banner-matter">
						</div>		
						
				</div>
				<div class="in-line">
					<div class="para-an">
						<h3>LATEST  ARRIVALS</h3>
						<p>Check our all latest products in this section.</p>
					</div>
					<div class="lady-in">
						<div class="col-md-4 you-para">
						<a href="http://localhost:8080/itcaststore/findProductById?id=8740bee0-bfb8-4ba1-8f6e-b69310617db9">
							<img class="img-responsive pic-in" src="${pageContext.request.contextPath}/bookcover/bookcover.jpg" alt=" " >
							</a>
							<p>Discount!!!!!</p>
							
						</div>
						<div class="col-md-4 you-para">
							<img class="img-responsive pic-in" src="${pageContext.request.contextPath}/bookcover/bookcover1.jpg" alt=" " >
							
							<p>Discount!!!!!</p>
							
						</div>
						<div class="col-md-4 you-para">
							<img class="img-responsive pic-in" src="${pageContext.request.contextPath}/bookcover/bookcover2.jpg" alt=" " >
							
							<p>Discount!!!!!</p>
							
						</div>
						
						<div class="col-md-4 you-para">
							<img class="img-responsive pic-in" src="${pageContext.request.contextPath}/bookcover/bookcover3.jpg" alt=" " >
							
							<p>Discount!!!!!</p>
							
						</div>
						<div class="col-md-4 you-para">
							<img class="img-responsive pic-in" src="${pageContext.request.contextPath}/bookcover/bookcover4.jpg" alt=" " >
							
							<p>Discount!!!!!</p>
							
						</div>
						<div class="col-md-4 you-para">
							<img class="img-responsive pic-in" src="${pageContext.request.contextPath}/bookcover/bookcover5.jpg" alt=" " >
							
							<p>Discount!!!!!</p>
							
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				</div>
				<div class="col-md-3 col-m-left">
				<div class="in-left">						
					<div class="cool">		
					</div>		
				</div>
				<div class="discount">
					<a href="#"><img class="img-responsive pic-in" src="${pageContext.request.contextPath}/client/images/p2.jpg" alt=" " >	</a>		
											
					
				</div>
				<div class="discount">
					<a href="#"><img class="img-responsive pic-in" src="${pageContext.request.contextPath}/client/images/p3.jpg" alt=" " ></a>			
											
					
				</div>
				<div class="twitter-in">
					<h5>公告板</h5>
					<span class="twitter-ic">	</span>
					<div class="up-date">
					    <p>news:</p>
						<p>${n.details }</p>
						<p>${n.n_time }</p>
						
					</div>
					<div class="up-date">
					<p class="ago"> Looks like nice and dicent design</p>
					<p class="ago">CONTACT US 1235468879@163.com</p>
					<p class="ago">CONTACT US 086-1235468879</p>
					<p class="ago">About 1 hour ago via informed</p>
					<p class="ago">This function is updating!!</p>
						
					</div>
					
					<div class="clearfix"> </div>
				</div>
				</div>
			<div class="lady-in-on">
			<div class="buy-an">
				<h3>OTHER PRODUCTS</h3>
				<p>Our all latest products in this section.</p>
				</div>
				<ul id="flexiselDemo1">			
				<li><a href="#"><img class="img-responsive women" src="${pageContext.request.contextPath}/bookcover/101.jpg" alt=""></a>
				<div class="hide-in">
				<p>HOT!!!!</p>
				</div>
				<li><a href="#"><img class="img-responsive women" src="${pageContext.request.contextPath}/bookcover/102.jpg" alt=""></a>
				<div class="hide-in">
				<p>HOT!!!!</p>
				  
				</div></li>
				<li><a href="#"><img class="img-responsive women" src="${pageContext.request.contextPath}/bookcover/103.jpg" alt=""></a>
				<div class="hide-in">
				<p>HOT!!!!</p> 
				</div></li>
				<li><a href="#"><img class="img-responsive women" src="${pageContext.request.contextPath}/bookcover/104.jpg" alt=""></a>
				<div class="hide-in">
				<p>HOT!!!!</p> 
				</div></li>
            </ul>
            		<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo1").flexisel({
				visibleItems: 4,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });
		    
		});
	</script>
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
		</div>
				</div>
				</div>
			
	<%@ include file="foot.jsp" %>
</body>
</html>
