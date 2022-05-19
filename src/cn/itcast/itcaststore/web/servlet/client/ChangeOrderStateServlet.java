package cn.itcast.itcaststore.web.servlet.client;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.itcast.itcaststore.domain.Product;
import cn.itcast.itcaststore.service.OrderService;

import cn.itcast.itcaststore.domain.Product;
import cn.itcast.itcaststore.exception.FindProductByIdException;
import cn.itcast.itcaststore.service.ProductService;
import cn.itcast.itcaststore.domain.User;
import cn.itcast.itcaststore.service.UserService;

public class ChangeOrderStateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获得订单号数据
		String orderid = request.getParameter("orderid");
		String paySuccess = "恭喜您支付成功！";
		if (null != orderid) {
				OrderService service = new OrderService();
				UserService us=new UserService();
				HttpSession session=request.getSession();
				Map<Product, Integer> cart = (Map<Product, Integer>)session.getAttribute("product");
				for (Map.Entry<Product, Integer> entry : cart.entrySet()) {
					Product a=entry.getKey();
					String u=a.getUser();
					double p=a.getPrice();
					Integer n=entry.getValue();
					double money=p*n*0.8;
					User seller=us.FindUserByname(u);
					double m=seller.getBalance();
					double reBalance=m+money;
					us.updateBalance(reBalance, u);
				    //System.out.println("user is "+ u +" Acount balance :"+m+" Will add money :"+money);

				}
				//String a=(String) session.getAttribute("product");
				//System.out.println(a);
				// 根据订单号修改订单状态
				try {
					service.updateState(orderid);
					request.setAttribute("paySuccess", paySuccess);
					/*response.setContentType("text/html; charset=UTF-8"); //转码
				    PrintWriter out = response.getWriter();
				    out.flush();
				    out.println("<script>");
				    out.println("alert('支付成功！');");
				    out.println("window.open('http://localhost:8080/itcaststore/findOrderByUser')");
				    out.println("</script>");
					//request.getRequestDispatcher("/findOrderByUser").forward(request, response);*/
					response.sendRedirect(request.getContextPath() + "/client/paysuccess.jsp");
				} catch (Exception e) {
					e.printStackTrace();
					response.getWriter().write("修改订单状态失败");
				}
			}
	}
}
