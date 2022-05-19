<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<HTML>
<HEAD>
	<meta http-equiv="Content-Language" content="zh-cn">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="${pageContext.request.contextPath}/admin/css/Style.css" rel="stylesheet" type="text/css" />
	<script language="javascript" src="${pageContext.request.contextPath}/admin/js/public.js"></script>
	<script type="text/javascript">
	    //添加商品
		function addProduct() {
			window.location.href = "${pageContext.request.contextPath}/admin/products/add.jsp";
		}
		//删除商品
		function p_del() {   
			var msg = "您确定要删除该商品吗？";   
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
	<form id="Form1" name="Form1"
		action="${pageContext.request.contextPath}/findProductByManyCondition"
		method="post">
		<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
			<TBODY>
			
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3"><strong>用 户 列 表</strong>
					</TD>
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
							<tr style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">
								<td align="center" >用户名</td>
								<td align="center" >用户密码</td>
								<td align="center"  >用户性别</td>
								<td  align="center">eamil</td>
								<td  align="center">TEL</td>
								<td  align="center">简介</td>
								<td  align="center">用户状态</td>
								<td  align="center">权限</td>
								<td  align="center">注册时间</td>
								<td  align="center">账户余额</td>
							</tr>
                            <!--  循环输出所有商品 -->
							<c:forEach items="${ps}" var="p">
								<tr onmouseover="this.style.backgroundColor = 'white'"
									onmouseout="this.style.backgroundColor = '#F5FAFE';">
									<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="200">${p.username }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="18%">${p.password }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="8%">${p.gender }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center" width="8%">${p.email }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center">${p.telephone}</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center">${p.introduce}</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center">${p.state}</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center">${p.role}</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center">${p.registTime}</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center">${p.balance}</td>
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