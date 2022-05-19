<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<HTML>
<HEAD>
	<meta http-equiv="Content-Language" content="zh-cn">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="${pageContext.request.contextPath}/admin/css/Style.css" rel="stylesheet" type="text/css" />
</HEAD>
<body>
	<br />

	<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
			<TBODY>
				<tr>
						<td><h3>当前登录设备信息</h3>
						<h5>设备ip地址：${ips }</h5>
						<h5>设备名：${hostname }</h5>
						<h5>设备登录时间：${time }</h5></td>
				</tr>
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3"><strong>设备登陆历史记录</strong>
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
								<td align="center" >设备ip地址</td>
								<td align="center" >设备名</td>
								<td align="center"  >设备登录时间</td>
							</tr>
                            <!--  循环输出所有商品 -->
							<c:forEach items="${ip}" var="p">
								<tr onmouseover="this.style.backgroundColor = 'white'"
									onmouseout="this.style.backgroundColor = '#F5FAFE';">
									<td style="CURSOR: hand; HEIGHT: 22px" align="center">${p.ip }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center" >${p.hostname }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center">${p.ltime }</td>
								</tr>
							</c:forEach>
						</table>
					</td>
				</tr>
			</TBODY>
		</table>
</body>
</HTML>