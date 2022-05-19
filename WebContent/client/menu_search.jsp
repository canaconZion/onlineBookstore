<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<head>
<title>menu</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script type="text/javascript">
/**
 * my_click和my_blur均是用于前台页面搜索框的函数
 */
//鼠标点击搜索框时执行
function my_click(obj, myid){
	//点击时，如果取得的值和搜索框默认value值相同，则将搜索框清空
	if (document.getElementById(myid).value == document.getElementById(myid).defaultValue){
	  document.getElementById(myid).value = '';
	  obj.style.color='#000';
	}
}
//鼠标不聚焦在搜索框时执行
function my_blur(obj, myid){
	//鼠标失焦时，如果搜索框没有输入值，则用搜索框的默认value值填充
	if (document.getElementById(myid).value == ''){
	 document.getElementById(myid).value = document.getElementById(myid).defaultValue;
	 obj.style.color='#999';
 }
}

/**
 * 点击搜索按钮执行的函数
 */
function search(){
	document.getElementById("searchform").submit();
}
</script>
<%!
 public String convert(String data){
	String str="";
	for(int i=0;i<data.length();i++){
		str+="/u"+Integer.toHexString(data.charAt(i));
	}
	String context="http://localhost:8080/itcaststore";
	String address=context+"/showProductByPage?category="+str;
	return address;
}
%>
<!--  -->
</head>
<div class="container">
<div class="header-bottom-bottom">
				<div class="top-nav">
					<span class="menu"> </span>
		<ul>
		<li><a href="${pageContext.request.contextPath}/showMessages?id=user">共享社区</a></li>
		<li><a href="${pageContext.request.contextPath}/showProductByPage?category=文学">文学</a> </li>
		<li><a href="${pageContext.request.contextPath}/showProductByPage?category=生活">生活</a> </li>
		<li><a href="${pageContext.request.contextPath}/showProductByPage?category=计算机">计算机</a> </li>
		<li><a href="${pageContext.request.contextPath}/showProductByPage?category=外语">外语</a></li>
		<li><a href="${pageContext.request.contextPath}/showProductByPage?category=经营">经管</a></li>
		<li><a href="${pageContext.request.contextPath}/showProductByPage?category=励志">励志</a> </li>
		<li><a href="${pageContext.request.contextPath}/showProductByPage?category=社科">社科</a> </li>
		<li><a href="${pageContext.request.contextPath}/showProductByPage?category=学术">学术</a> </li>
		<li><a href="${pageContext.request.contextPath}/showProductByPage?category=少儿">少儿</a></li>
		<li><a href="${pageContext.request.contextPath}/showProductByPage?category=艺术">艺术</a> </li>
		<li><a href="${pageContext.request.contextPath}/showProductByPage?category=原版">原版</a> </li>
		<li><a href="${pageContext.request.contextPath}/showProductByPage?category=科技">科技</a> </li>
		<li><a href="${pageContext.request.contextPath}/showProductByPage?category=考试">考试</a></li>
		<li><a href="${pageContext.request.contextPath}/showProductByPage">全部书籍</a></li>	
		</ul>
		<div class="clearfix"> </div>					
</div>
<div class="search">
<form action="${pageContext.request.contextPath }/MenuSearchServlet" id="searchform">
				<input type="text" name="textfield" class="inputtable" id="textfield" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" value="请输入书名"/> 
				<input type="submit"  value="" onclick="search()"/>
		
</form>
				</div>
				<div class="clearfix"> </div>
</div>
</div>