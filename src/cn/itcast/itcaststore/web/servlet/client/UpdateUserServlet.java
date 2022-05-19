package cn.itcast.itcaststore.web.servlet.client;
import java.io.IOException;
import javax.security.auth.login.LoginException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.itcast.itcaststore.domain.User;
import cn.itcast.itcaststore.service.UserService;

public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		//String username = request.getParameter("username");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String telephone = request.getParameter("telephone");
		String introduce = request.getParameter("introduce");
		if(password=="") {
			password=user.getPassword();
		}
		user.setGender(gender);
		user.setIntroduce(introduce);
		user.setPassword(password);
		user.setTelephone(telephone);
 		// 2.调用service完成登录操作。
		UserService service = new UserService();
		service.updateUser(user);
		response.sendRedirect(request.getContextPath() + "/client/modifyuserinfo.jsp");
	}
}
