package cn.itcast.itcaststore.web.servlet.manager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspException;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;
import cn.itcast.itcaststore.domain.Product;
import cn.itcast.itcaststore.domain.User;
import cn.itcast.itcaststore.exception.AddProductException;
import cn.itcast.itcaststore.service.ProductService;
import cn.itcast.itcaststore.utils.FileUploadUtils;
import cn.itcast.itcaststore.utils.IdUtils;

import cn.itcast.itcaststore.domain.Message;
import cn.itcast.itcaststore.domain.User;
import cn.itcast.itcaststore.service.MessageService;

/**
 * 后台系统
 * 用于添加商品的servlet
 */
public class UserAddProductServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User users = (User) session.getAttribute("user");
		if(users==null) {
			response.sendRedirect(request.getContextPath() + "/client/error/privilege.jsp");
		}
		else {
		// 创建javaBean,将上传数据封装.
		Product p = new Product();
		Map<String, String> map = new HashMap<String, String>();
		// 封装商品id
		map.put("id", IdUtils.getUUID());
		String user=users.getUsername();
		map.put("user", user);
		DiskFileItemFactory dfif = new DiskFileItemFactory();
		// 设置临时文件存储位置
		dfif.setRepository(new File(this.getServletContext().getRealPath(
				"/temp")));
		// 设置上传文件缓存大小为10m
		dfif.setSizeThreshold(1024 * 1024 * 10);
		// 创建上传组件
		ServletFileUpload upload = new ServletFileUpload(dfif);
		// 处理上传文件中文乱码
		upload.setHeaderEncoding("utf-8");
		try {
			// 解析request得到所有的FileItem
			List<FileItem> items = upload.parseRequest(request);
			// 遍历所有FileItem
			for (FileItem item : items) {
				// 判断当前是否是上传组件
				if (item.isFormField()) {
					// 不是上传组件
					String fieldName = item.getFieldName(); // 获取组件名称
					String value = item.getString("utf-8"); // 解决乱码问题
					map.put(fieldName, value);
				} else {
					// 是上传组件
					// 得到上传文件真实名称

					String fileName = item.getName();
					fileName = FileUploadUtils.subFileName(fileName);

					// 得到随机名称
					String randomName = FileUploadUtils
							.generateRandonFileName(fileName);

					// 得到随机目录
					String randomDir = FileUploadUtils
							.generateRandomDir(randomName);
					// 图片存储父目录
					String imgurl_parent = "/productImg" + randomDir;

					File parentDir = new File(this.getServletContext()
							.getRealPath(imgurl_parent));
					// 验证目录是否存在，如果不存在，创建出来
					if (!parentDir.exists()) {
						parentDir.mkdirs();
					}
					String imgurl = imgurl_parent + "/" + randomName;

					map.put("imgurl", imgurl);

					IOUtils.copy(item.getInputStream(), new FileOutputStream(
							new File(parentDir, randomName)));
					item.delete();
				}
			}
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
		try {
			// 将数据封装到javaBean中
			BeanUtils.populate(p, map);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		ProductService service = new ProductService();
		String book=p.getName();
		String name=users.getUsername();
		MessageService mService=new MessageService();
		Message bean=new Message();
		String message="用户"+name+"上传了新的书籍《"+book+"》，价格优惠，内容精彩，欢迎大家搜索购买！";
		String t=new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss").format(new Date());
		bean.setUser("管理员");
		bean.setMessage(message);
		bean.setPtime(t);
		mService.addMessage(bean);
		try {
			// 调用service完成添加商品操作
			service.addProduct(p);
			response.sendRedirect(request.getContextPath()
					+ "/index.jsp");
			return;
		} catch (AddProductException e) {
			e.printStackTrace();
			response.getWriter().write("添加商品失败");
			return;
		}
	}
	}
}