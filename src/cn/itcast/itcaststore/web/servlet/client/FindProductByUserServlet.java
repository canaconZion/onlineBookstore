package cn.itcast.itcaststore.web.servlet.client;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.itcaststore.domain.Order;
import cn.itcast.itcaststore.domain.Product;
import cn.itcast.itcaststore.domain.User;
import cn.itcast.itcaststore.exception.FindProductByIdException;
import cn.itcast.itcaststore.service.OrderService;
import cn.itcast.itcaststore.service.ProductService;
/**
 * 根据商品id查找指定商品信息的servlet
 */
public class FindProductByUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = (User) request.getSession().getAttribute("user");
		ProductService service=new ProductService();
		List<Product> products = service.findProductByUser(user.getUsername());
		/*int i = 0;
		try {
			for (;;) {
				System.out.println("输出："+products.get(i));
				i++;
			}
		} catch (IndexOutOfBoundsException e) {
 
		}
*/
		request.setAttribute("products",products );
		request.getRequestDispatcher("/client/bookList.jsp").forward(request, response);
	}
}
