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

public class UpdateBalanceServlet extends HttpServlet {
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
		String moneys = request.getParameter("money");
		double balance=user.getBalance();
		double money=Double.parseDouble(moneys)+balance;
		String name=user.getUsername();
		user.setBalance(money);
 		// 2.调用service完成登录操作。
		UserService service = new UserService();
		service.updateBalance(money,name);
		response.sendRedirect(request.getContextPath() + "/client/paysuccess.jsp");
	}
}
