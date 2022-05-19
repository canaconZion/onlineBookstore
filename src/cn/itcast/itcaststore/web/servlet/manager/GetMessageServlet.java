package cn.itcast.itcaststore.web.servlet.manager;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cn.itcast.itcaststore.domain.Message;
import cn.itcast.itcaststore.service.MessageService;
public class GetMessageServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//1.接收id
		String sid = request.getParameter("id");
		//2.转换id为int类型
		int id = Integer.parseInt(sid);
		//3.通过id查询
		MessageService service = new MessageService();
		Message message=service.findMessageById(id);
		//4.将对象存储到request域中
		request.setAttribute("letter",message );
		//5.请求转发到update.jsp展示
		request.getRequestDispatcher("/client/updateMessage.jsp").
		forward(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
