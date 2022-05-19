package cn.itcast.itcaststore.web.servlet.manager;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.itcaststore.service.ProductService;

public class ListSaleTableServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		ProductService service = new ProductService();
		List<Object[]> ps = service.download(year,month);
		request.setAttribute("ps",ps);
		// 4.重定向到list.jsp页面
		request.getRequestDispatcher("/admin/products/saleList.jsp").forward(
				request, response);
	}
}
