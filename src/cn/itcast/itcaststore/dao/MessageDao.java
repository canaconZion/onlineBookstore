package cn.itcast.itcaststore.dao;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.itcast.itcaststore.domain.Message;
import cn.itcast.itcaststore.utils.DataSourceUtils;

public class MessageDao{
	//查询所有的信息
		public List<Message> getAllMessage() throws SQLException {
			String sql = "select id,user,message,ptime from  message order by id desc";
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
			return runner.query(sql, new BeanListHandler<Message>(Message.class));
		}
		//添加信息
		public void addMessage(Message n) throws SQLException {
			String sql = "insert into message(user,message,ptime) values(?,?,?)";
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
			runner.update(sql, n.getUser(),n.getMessage(),n.getPtime());
		}
		//根据用户查找信息
		public List<Message> findMessageByUser(String user) throws SQLException {
			String sql = "select * from message where user = ? order by id desc";
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
			return runner.query(sql, new BeanListHandler<Message>(Message.class),user);
		}
		//根据id查找信息
		public Message findMessageById(int id) throws SQLException {
			String sql = "select * from message where id = ?";
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
			return runner.query(sql, new BeanHandler<Message>(Message.class),id);
		}
		//根据id删除信息
		public void deleteMessage(int id) throws SQLException {
			String sql = "delete from message where id = ?";
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
			runner.update(sql, id);
		}
		//根据id删除信息
		public void updateMessage(int id,String message) throws SQLException {
			String sql="update message set message=? where id=?";
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
			runner.update(sql, message,id);
		}	
}