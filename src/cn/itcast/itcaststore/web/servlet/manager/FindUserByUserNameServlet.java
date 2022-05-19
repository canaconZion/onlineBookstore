package cn.itcast.itcaststore.web.servlet.manager;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.itcaststore.domain.User;
import cn.itcast.itcaststore.service.UserService;

public class FindUserByUserNameServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		UserService service = new UserService();
		String uname = req.getParameter("user");
		User user=service.FindUserByname(uname);
		
		req.setAttribute("puser", user);
		
		req.getRequestDispatcher("/client/userInformation.jsp").forward(req, resp);
	}
}
