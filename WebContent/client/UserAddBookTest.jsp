<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="http://www.itcast.cn/tag"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书上传</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/client/css/04-1.css" type="text/css" />
</head>
<style>
       .bottom{
                 position:fixed;
                 bottom:0;
}
</style>
<body>
    <div class="wrapper"> 	
	<form id="userAction_save_do" name="Form1"
		action="${pageContext.request.contextPath}/UseraddProduct" method="post"
		enctype="multipart/form-data">
			<h3>上传图书</h3>
			图书名称：<input type="text" name="name" class="it" />
			<hr color="#888" size="2" />
			图书价格：<input type="text" name="price" class="it" />
		    <hr color="#888" size="2" />
			商品数量：<input type="text" name="pnum" class="it" />
			<hr color="#888" size="2" />	
			图书类别：<select name="category" id="category">
						<option value="" selected="selected">--选择图书类别--</option>
						<option value="文学">文学</option>
						<option value="生活">生活</option>
						<option value="计算机">计算机</option>
						<option value="外语">外语</option>
						<option value="经营">经营</option>
						<option value="励志">励志</option>
						<option value="社科">社科</option>
						<option value="学术">学术</option>
						<option value="少儿">少儿</option>
						<option value="艺术">艺术</option>
						<option value="原版">原版</option>
						<option value="科技">科技</option>
						<option value="考试">考试</option>
						<option value="生活百科">生活百科</option>
				</select>
			<hr color="#888" size="2" />	
			图书封面：<input type="file" name="upload" size="30" value="" />
			<hr color="#888" size="2" />	
			图书描述：<textarea name="description" cols="30" rows="3" style="WIDTH: 96%"></textarea>
			<hr color="#888" size="2" />	
				
					<input id="login_btn" type="submit" class="button_ok" value="确定">	
					<FONT color="red" size="5"></FONT>
					<input id="login_btn" type="reset" value="重置" class="button_cancel">					
					<FONT color="red" size="5">
					</FONT> 
					<INPUT id="login_btn" class="button_ok" type="button" onclick="history.go(-1)" value="返回" />
					
	</form>
	<div class="bottom">
	<jsp:include page="foot.jsp" />
	</div>
	
	
</div>	
</body>
</html>
