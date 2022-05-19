package cn.itcast.itcaststore.web.servlet.manager;

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

public class ListMessageServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				HttpSession session = request.getSession();
				User user = (User) session.getAttribute("user");
				//查询所有留言
				MessageService mService=new MessageService();
				List<Message> list = mService.getAllMessage();
				/*Message m=mService.findMessageById("2");
				System.out.println(m.getId());
				System.out.println(m.getUser());
				System.out.println(m.getMessage());
				System.out.println(m.getPtime());*/
				//将集合数据存储到request域
				request.setAttribute("list", list);
				//请求转发
				request.getRequestDispatcher("/admin/users/melist.jsp").
				forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}