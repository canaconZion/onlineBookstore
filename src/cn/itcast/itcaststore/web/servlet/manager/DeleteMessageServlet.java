package cn.itcast.itcaststore.web.servlet.manager;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import cn.itcast.itcaststore.domain.Product;
import cn.itcast.itcaststore.exception.AddProductException;
import cn.itcast.itcaststore.service.MessageService;
import cn.itcast.itcaststore.utils.FileUploadUtils;
import cn.itcast.itcaststore.utils.IdUtils;


public class DeleteMessageServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 获取请求参数，产品id
		String sid = request.getParameter("id");
		String state = request.getParameter("state");
		String a="user";
		//2.转换id为int类型
		int id = Integer.parseInt(sid);
		//String id = request.getParameter("id");
		MessageService service = new MessageService();
		service.deleteMessage(id);
		if(state.equals(a)) {
			response.sendRedirect(request.getContextPath() + "/showMyMessage");
		return;
		}
		else {
			response.sendRedirect(request.getContextPath() + "/showMessages?id=admin");
		}
	}

}
