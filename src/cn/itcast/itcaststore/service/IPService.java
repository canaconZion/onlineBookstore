package cn.itcast.itcaststore.service;

import java.sql.SQLException;
import java.util.List;

import cn.itcast.itcaststore.dao.IPDao;
import cn.itcast.itcaststore.domain.IP;

public class IPService {
	private IPDao dao=new IPDao();
	//查询所有信息
	public List<IP> getAllMessage(){
		try {
			return dao.getAllMessage();
		}catch(SQLException e) {
			throw new RuntimeException("查询所有ip失败");
		}
	}
	//添加信息
	public void addMessage(IP ip){
		try {
			 dao.addMessage(ip); 
		}catch(SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("添加ip失败");
		}
	}
}