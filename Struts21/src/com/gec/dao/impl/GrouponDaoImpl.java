package com.gec.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.gec.dao.BaseDao;
import com.gec.dao.GrouponDao;
import com.gec.entiy.Groupon;

public class GrouponDaoImpl extends BaseDao implements GrouponDao {
	ResultSet res=null;
	Connection conn=null;
	PreparedStatement stmt=null;
	String sql="";
	@Override
	public Groupon SelectByName(String gname) {
		sql="select * from groupon where gname=?";
		conn=super.getConnection();
		Groupon group=new Groupon();
		try {
			stmt=conn.prepareStatement(sql);
			stmt.setString(1, gname);
			res=stmt.executeQuery();
			while(res.next()){
				group.setGid(res.getInt(1));
				group.setGname(res.getString(2));
				group.setOldPrice(res.getInt(3));
				group.setGprice(res.getInt(4));
				group.setGintro(res.getString(5));
				group.setGday(res.getInt(6));
				group.setGphoto(res.getString(7));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, res, stmt);
		}
		return group;
	}
	@Override
	public List<Groupon> getGroup(int a) {
		// TODO Auto-generated method stub
		conn=super.getConnection();
		sql="select * from groupon order by gid limit ?,6 ";
		List<Groupon> list=new ArrayList<Groupon>();
		try {
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, (a-1)*6);
			res=stmt.executeQuery();
			while(res.next()){
				System.out.println("1111");
				Groupon g=new Groupon();
				g.setGid(res.getInt(1));
				g.setGname(res.getString(2));
				g.setOldPrice(res.getInt(3));
				g.setGprice(res.getInt(4));
				g.setGintro(res.getString(5));
				g.setGday(res.getInt(6));
				g.setGphoto(res.getString(7));
				list.add(g);
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
	public int getcount() {
		int num=0;
		conn=super.getConnection();
		sql="select count(*) from groupon";
		try {
			stmt=conn.prepareStatement(sql);
			res=stmt.executeQuery();
			if(res.next()){
				num=res.getInt(1);
				num = num%6==0?num/6:(num/6)+1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
		closeAll(conn, res, stmt);
		}
		return num;
	}

}
