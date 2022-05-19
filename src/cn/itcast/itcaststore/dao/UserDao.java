package cn.itcast.itcaststore.dao;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.itcast.itcaststore.domain.Notice;
import cn.itcast.itcaststore.domain.Product;
import cn.itcast.itcaststore.domain.User;
import cn.itcast.itcaststore.utils.DataSourceUtils;

public class UserDao {
	//查询所有用户
	public List<User> listAll() throws SQLException {
		String sql = "select * from user";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanListHandler<User>(User.class));
	}
	
	// 添加用户
	public void addUser(User user) throws SQLException {
		String sql = "insert into user(username,password,gender,email,telephone,introduce,activecode,balance) values(?,?,?,?,?,?,?,?)";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		int row = runner.update(sql, user.getUsername(), user.getPassword(),
				user.getGender(), user.getEmail(), user.getTelephone(),
				user.getIntroduce(), user.getActiveCode(),user.getBalance());
		if (row == 0) {
			throw new RuntimeException();
		}
	}

	// 根据激活码查找用户
	public User findUserByActiveCode(String activeCode) throws SQLException {
		String sql = "select * from user where activecode=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanHandler<User>(User.class), activeCode);

	}

	// 激活用戶
	public void activeUser(String activeCode) throws SQLException {
		String sql = "update user set state=? where activecode=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		runner.update(sql, 1, activeCode);
	}
	
	//根据用户名与密码查找用户
	public User findUserByUsernameAndPassword(String username, String password) throws SQLException {
		String sql="select * from user where username=? and password=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanHandler<User>(User.class),username,password);
	}
	
	//根据用户名
		public User findUserByUsername(String username) throws SQLException {
			String sql="select * from user where username=? ";
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
			return runner.query(sql, new BeanHandler<User>(User.class),username);
		}
	
	//修改账户余额
	public void updateBalance(double n,String user ) throws SQLException {
		String sql = "update user set balance=? where username=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		runner.update(sql, n,user);
	}
	//修改用户信息
	public void updateUser(User user) throws SQLException{
		String sql="update user set password=? ,gender=?,telephone=?,introduce=? where username=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		runner.update(sql, user.getPassword(),user.getGender(),user.getTelephone(),user.getIntroduce(),user.getUsername());
	}
}
