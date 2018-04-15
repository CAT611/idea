package com.gec.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.gec.dao.BaseDao;
import com.gec.dao.OrderDao;

public class OrderDaoImpl extends BaseDao implements OrderDao {
	ResultSet res=null;
	Connection conn=null;
	PreparedStatement stmt=null;
	String sql="";
	@Override
	public void addOrder(int oprice, String odate, int uid) {
		sql="insert into orders (oprice,odate,uid) values(?,?,?)";
		conn=super.getConnection();
		
		try {
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, oprice);
			stmt.setString(2, odate);
			stmt.setInt(3, uid);
			stmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, res, stmt);
		}
	}
	
}
