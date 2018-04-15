package com.gec.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.gec.dao.BaseDao;
import com.gec.dao.ShopwindowDao;
import com.gec.entiy.Shopwindow;

public class ShopwindowDaoImpl extends BaseDao implements ShopwindowDao {
	
	ResultSet res=null;
	Connection conn=null;
	PreparedStatement stmt=null;
	String sql="";
	
	@Override
	public List<Shopwindow> getShop(int a) {
		conn=super.getConnection();
		sql="select * from  shopwindow where id=?";
		List<Shopwindow> list=new ArrayList<Shopwindow>();
		try {
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, a);
			res=stmt.executeQuery();
			while(res.next()){
				Shopwindow s=new Shopwindow();
				s.setId(res.getInt(1));
				s.setAdr(res.getString(2));
				list.add(s);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, res, stmt);
		}
		return list;
	}

	@Override
	public List<String> getShops() {
		conn=super.getConnection();
		sql="select adr from shopwindow";
		List<String> list=new ArrayList<String>();
		try {
			stmt=conn.prepareStatement(sql);
			res=stmt.executeQuery();
			while(res.next()){
				String str=res.getString(1);
				list.add(str);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
