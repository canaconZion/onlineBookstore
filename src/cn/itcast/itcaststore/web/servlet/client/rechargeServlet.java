package cn.itcast.itcaststore.web.servlet.client;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 付款（模拟支付）
 */
public class rechargeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String moneys = request.getParameter("yh");
		double money=Double.parseDouble(moneys);
		//System.out.println(money);
		//System.out.println("The checked bank is"+bank);
		request.setAttribute("money", money);
		request.getRequestDispatcher("/client/confirmRecharge.jsp").forward(request, response);
	}
}
