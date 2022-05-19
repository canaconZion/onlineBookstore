package cn.itcast.itcaststore.web.servlet.client;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.itcast.itcaststore.service.MessageService;
import cn.itcast.itcaststore.domain.Message;
import cn.itcast.itcaststore.domain.User;

public class showMyMessServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				HttpSession session = request.getSession();
				User user = (User) session.getAttribute("user");
				if(user==null) {
					response.sendRedirect(request.getContextPath() + "/client/error/privilege.jsp");
				}
				else {
				//查询所有留言
				MessageService mService=new MessageService();
				List<Message> ulist=mService.findMessageByUser(user.getUsername());
				//将集合数据存储到request域
				request.setAttribute("ulist", ulist);
				//请求转发
				request.getRequestDispatcher("client/user/myMessage.jsp").
				forward(request, response);}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}