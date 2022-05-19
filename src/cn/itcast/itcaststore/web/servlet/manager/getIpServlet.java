package cn.itcast.itcaststore.web.servlet.manager;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.itcast.itcaststore.domain.IP;
import cn.itcast.itcaststore.domain.Message;
import cn.itcast.itcaststore.domain.User;
import cn.itcast.itcaststore.service.IPService;
import cn.itcast.itcaststore.service.MessageService;
 
 public class getIpServlet extends HttpServlet
 {
	 
	 
	 
		public void doGet(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			this.doPost(req, resp);
		}
		public void doPost(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			HttpSession session = req.getSession();
			User user = (User) session.getAttribute("user");
			if(user==null) {
				resp.sendRedirect(req.getContextPath() + "/client/error/privilege.jsp");
			}
			else {
				String name=user.getUsername();
				IPService iservice=new IPService();
				InetAddress ip =  getIpAddress();
				String ips=ip.getHostAddress();
				String hn=ip.getHostName();
				IP bean=new IP();
				String t=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
				bean.setIp(ips);
				bean.setHostname(hn);
				bean.setLtime(t);
				iservice.addMessage(bean);
				req.getSession().setAttribute("ips",ips);
				req.getSession().setAttribute("hostname",hn);
				req.getSession().setAttribute("time",t);
				resp.sendRedirect(req.getContextPath() + "/admin/login/home.jsp");
			}
		}
 
	public static InetAddress getIpAddress() {
		InetAddress lip = null;
	    try {
	      Enumeration<NetworkInterface> allNetInterfaces = NetworkInterface.getNetworkInterfaces();
	      InetAddress ip = null;
	      while (allNetInterfaces.hasMoreElements()) {
	        NetworkInterface netInterface = (NetworkInterface) allNetInterfaces.nextElement();
	        if (netInterface.isLoopback() || netInterface.isVirtual() || !netInterface.isUp()) {
	          continue;
	        } else {
	          Enumeration<InetAddress> addresses = netInterface.getInetAddresses();
	          while (addresses.hasMoreElements()) {
	            ip = addresses.nextElement();
	            if (ip != null && ip instanceof Inet4Address) {
	              return ip;
	            }
	          }
	        }
	      }
	    } catch (Exception e) {
	    	System.err.println("IP地址获取失败" + e.toString());
	    }
	    return lip;
	  }
 
}