<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<HTML>
<HEAD>
	<meta http-equiv="Content-Language" content="zh-cn">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="${pageContext.request.contextPath}/admin/css/Style.css"
		rel="stylesheet" type="text/css" />
	<script language="javascript"
		src="${pageContext.request.contextPath}/admin/js/public.js"></script>
	<script type="text/javascript">
		function addNotice() {
			window.location.href = "${pageContext.request.contextPath}/admin/notices/add.jsp";
		}
		//删除信息
		function p_del() {   
			var msg = "您确定要删除该信息吗？";   
			if (confirm(msg)==true){   
			return true;   
			}else{   
			return false;   
			}   
		}   
	</script>
</HEAD>
<body>
	<br />
	<form id="Form1" name="Form1" action="" method="post">
		<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
			<tbody>
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3">
					    <strong>帖 子 列 表</strong>
					</td>
				</tr>
				<tr>
					<td class="ta_01" align="right">
					
					</td>
				</tr>
				<tr>
					<td class="ta_01" align="center" bgColor="#f5fafe">
						<table cellspacing="0" cellpadding="1" rules="all"
							bordercolor="gray" border="1" id="DataGrid1"
							style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
							<tr
								style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">
								<td align="center" width="12%">信息发布者</td>
								<td align="center" width="24%">信息内容</td>
								<td align="center" width="8%">时间</td>
								<td width="8%" align="center">删除</td>
							</tr>
							<c:forEach items="${list}" var="m">
								<tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="23">${m.user }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="8%">${m.message }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="8%">${m.ptime }</td>
									<td align="center" style="HEIGHT: 22px" width="7%">
										<a href="${pageContext.request.contextPath}/manager/DeleteMessageServlet?id=${m.id}&state=admin" onclick="javascript:return p_del()">
											<img src="${pageContext.request.contextPath}/admin/images/i_del.gif" width="16" height="16" border="0" style="CURSOR: hand">
										</a>
									</td>
								</tr>
							</c:forEach>
						</table>
					</td>
				</tr>
			</TBODY>
		</table>
	</form>
</body>
</HTML>