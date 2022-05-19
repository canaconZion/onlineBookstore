package cn.itcast.itcaststore.service;

import java.sql.SQLException;
import java.util.List;

import cn.itcast.itcaststore.dao.MessageDao;
import cn.itcast.itcaststore.domain.Message;

public class MessageService{
	private MessageDao dao=new MessageDao();
	//查询所有信息
	public List<Message> getAllMessage(){
		try {
			return dao.getAllMessage();
		}catch(SQLException e) {
			throw new RuntimeException("查询所有信息失败");
		}
	}
	//添加信息
	public void addMessage(Message message){
		try {
			 dao.addMessage(message); 
		}catch(SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("添加信息信息失败");
		}
	}
	//根据用户查找信息
	public List<Message> findMessageByUser(String user){
		try {
			 return dao.findMessageByUser(user);
		}catch(SQLException e) {
			throw new RuntimeException("根据用户查找信息失败");
		}
	}
	//根据id查找信息
	public Message findMessageById(int sid){
		try {
			return dao.findMessageById(sid);
		}catch(SQLException e) {
			throw new RuntimeException("根据id查找信息失败");
		}
	}
	//根据id删除信息
	public void deleteMessage(int id){
		try {
			dao.deleteMessage(id);
		}catch(SQLException e) {
			throw new RuntimeException("根据id删除信息失败");
		}
	}
	//根据id修改信息
	public void updateMessage(int id,String message){
		try {
			dao.updateMessage(id, message);
		}catch(SQLException e) {
			throw new RuntimeException("根据修改信息失败");
		}
	}
}