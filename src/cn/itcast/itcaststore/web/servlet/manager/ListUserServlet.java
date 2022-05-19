package cn.itcast.itcaststore.web.servlet.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.itcaststore.domain.Product;
import cn.itcast.itcaststore.domain.User;
import cn.itcast.itcaststore.exception.ListProductException;
import cn.itcast.itcaststore.service.ProductService;
import cn.itcast.itcaststore.service.UserService;

public class ListUserServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.创建service层的对象
				UserService service = new UserService();
				try {
					// 2.调用service层用于查询所有商品的方法
					List<User> us = service.listAll();
					// 3.将查询出的所有商品放进request域中
					request.setAttribute("ps",us);
					// 4.重定向到list.jsp页面
					request.getRequestDispatcher("/admin/users/list.jsp").forward(
							request, response);
					return;
				} catch (ListProductException e) {
					e.printStackTrace();
					response.getWriter().write(e.getMessage());
					return;
				}
	}
}
