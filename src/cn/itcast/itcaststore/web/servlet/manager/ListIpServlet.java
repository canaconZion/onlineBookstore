package cn.itcast.itcaststore.web.servlet.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.itcaststore.domain.IP;
import cn.itcast.itcaststore.service.IPService;

public class ListIpServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.创建service层的对象
				IPService service = new IPService();
				// 2.调用service层用于查询所有商品的方法
				List<IP> ip = service.getAllMessage();
				// 3.将查询出的所有商品放进request域中
				request.setAttribute("ip",ip);
				// 4.重定向到list.jsp页面
				request.getRequestDispatcher("/admin/ip/ipList.jsp").forward(
						request, response);
				return;
	}
}
