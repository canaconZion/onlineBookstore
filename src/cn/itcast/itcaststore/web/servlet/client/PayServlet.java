package cn.itcast.itcaststore.web.servlet.client;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.lang.model.element.ModuleElement.UsesDirective;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.itcast.itcaststore.domain.Product;
import cn.itcast.itcaststore.exception.FindProductByIdException;
import cn.itcast.itcaststore.service.ProductService;
import cn.itcast.itcaststore.domain.User;
import cn.itcast.itcaststore.service.UserService;
import cn.itcast.itcaststore.service.OrderService;
import cn.itcast.itcaststore.domain.OrderItem;
/**
 * 付款（模拟支付）
 */
public class PayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User users = (User) session.getAttribute("user");
		//Product p = (Product) session.getAttribute("p");
		//String sell=p.getUser();
		UserService service=new UserService();
		ProductService ps=new ProductService();
		//User seller=service.FindUserByname(sell);
		//double m=seller.getBalance();
		//String name=seller.getUsername();
		//System.out.println(name + " 的账户余额为"+m+"元" );
		// 1.将要提交的数据得到
		// 获得 支付必须基本数据
		String orderid = request.getParameter("orderid");
		String money = request.getParameter("money");
		double a=Double.parseDouble(money);
		//System.out.println(money+"to double is "+ a);
		// 银行
		//String payMet=request.getParameter("yh");
		String bank = request.getParameter("yh").toString();
		//System.out.println("The checked bank is"+bank);
		if(bank.equals("AcountBalance")) {
			double b=users.getBalance()-a;
			if(b>=0) {
				//double m=seller.getBalance();
				//System.out.println(m);
				users.setBalance(b);
				service.updateBalance(b,users.getUsername());
				//service.updateBalance(m, sell);
			}
			else {
				response.setContentType("text/html; charset=UTF-8"); //转码
			    PrintWriter out = response.getWriter();
			    out.flush();
			    out.println("<script>");
			    out.println("alert('账户余额不足，请选择其他支付方式！');");
			    out.println("history.back();");
			    out.println("</script>");
			}
		}
		/*OrderService os=new OrderService();
		try {
			List<String> l=os.findBookById(orderid);
			l.toString();
			System.out.println(l);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		request.setAttribute("bank", bank);
		request.setAttribute("orderid", orderid);	
		request.setAttribute("money", money);
		request.getRequestDispatcher("/client/confirm.jsp").forward(request, response);
	}
}
