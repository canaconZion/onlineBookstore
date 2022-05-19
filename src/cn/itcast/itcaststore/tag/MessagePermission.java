package cn.itcast.itcaststore.tag;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.itcast.itcaststore.domain.Message;
import cn.itcast.itcaststore.domain.User;
import cn.itcast.itcaststore.service.MessageService;

/**
*	添加信息servlet
*/
public class MessagePermission extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		if(user==null) {
			resp.sendRedirect(req.getContextPath() + "/client/error/privilege.jsp");
		}
		else {
			resp.sendRedirect(req.getContextPath()
				+ "/showMessages");
		
		}
	}
}