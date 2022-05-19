package cn.itcast.itcaststore.dao;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.itcast.itcaststore.domain.IP;
import cn.itcast.itcaststore.domain.Message;
import cn.itcast.itcaststore.utils.DataSourceUtils;

public class IPDao{
	
	//查询所有的信息
			public List<IP> getAllMessage() throws SQLException {
				String sql = "select * from  ip order by id desc";
				QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
				return runner.query(sql, new BeanListHandler<IP>(IP.class));
			}
			//添加信息
			public void addMessage(IP n) throws SQLException {
				String sql = "insert into ip(ip,hostname,ltime) values(?,?,?)";
				QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
				runner.update(sql, n.getIp(),n.getHostname(),n.getLtime());
			}
	
}