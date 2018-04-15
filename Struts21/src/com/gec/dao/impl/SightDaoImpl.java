package com.gec.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.gec.dao.BaseDao;
import com.gec.dao.SightDao;
import com.gec.entiy.Sight;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SightDaoImpl extends BaseDao implements SightDao {
	Connection conn=null;
	PreparedStatement stmt=null;
	ResultSet res=null;
	String sql="";
	@Override
	public List<Sight> top6(int tid) {
		List<Sight> list =new ArrayList<Sight>();
		sql="SELECT * from sight where tid=? ORDER BY sid LIMIT 6 ";
		conn=super.getConnection();
		try {
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1,tid);
			res=stmt.executeQuery();
			while(res.next()){
				Sight sight=new Sight();
				sight.setSid(res.getInt(1));
				sight.setSname(res.getString(2));
				sight.setSprice(res.getInt(3));
				sight.setSintro(res.getString(4));
				sight.setSphoto(res.getString(5));
				sight.setTid(res.getInt(6));
				sight.setDid(res.getInt(7));
				sight.setSday(res.getInt(8));
				sight.setSway(res.getString(9));
				sight.setSoprice(res.getInt(10));
				list.add(sight);
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
	public List<Sight> top8(int tid) {
		List<Sight> list =new ArrayList<Sight>();
		sql="SELECT * from sight where tid=? ORDER BY sid LIMIT 8 ";
		conn=super.getConnection();
		try {
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1,tid);
			res=stmt.executeQuery();
			while(res.next()){
				Sight sight=new Sight();
				sight.setSid(res.getInt(1));
				sight.setSname(res.getString(2));
				sight.setSprice(res.getInt(3));
				sight.setSintro(res.getString(4));
				sight.setSphoto(res.getString(5));
				sight.setTid(res.getInt(6));
				sight.setDid(res.getInt(7));
				sight.setSday(res.getInt(8));
				sight.setSway(res.getString(9));
				sight.setSoprice(res.getInt(10));
				list.add(sight);
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
	public Sight selectInfo(String sname) {
		Connection conn=null;
		sql="select * from sight where sname=?";
		Sight sight =new Sight();
		conn=super.getConnection();
		try {
			stmt=conn.prepareStatement(sql);
			res=stmt.executeQuery();
			while(res.next()){
				sight.setSid(res.getInt(1));
				sight.setSname(res.getString(2));
				sight.setSprice(res.getInt(3));
				sight.setSintro(res.getString(4));
				sight.setSphoto(res.getString(5));
				sight.setTid(res.getInt(6));
				sight.setDid(res.getInt(7));
				sight.setSday(res.getInt(8));
				sight.setSway(res.getString(9));
				sight.setSoprice(res.getInt(10));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sight;
	}
	@Override
	public List<Sight> top3(int tid) {
		List<Sight> list =new ArrayList<Sight>();
		sql="SELECT * from sight where tid=? ORDER BY sid LIMIT 3";
		conn=super.getConnection();
		try {
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1,tid);
			res=stmt.executeQuery();
			while(res.next()){
				Sight sight=new Sight();
				sight.setSid(res.getInt(1));
				sight.setSname(res.getString(2));
				sight.setSprice(res.getInt(3));
				sight.setSintro(res.getString(4));
				sight.setSphoto(res.getString(5));
				sight.setTid(res.getInt(6));
				sight.setDid(res.getInt(7));
				sight.setSday(res.getInt(8));
				sight.setSway(res.getString(9));
				sight.setSoprice(res.getInt(10));
				list.add(sight);
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
	public List<Sight> top10(int tid) {
		List<Sight> list =new ArrayList<Sight>();
		sql="SELECT * from sight where tid=? ORDER BY sid LIMIT 10 ";
		conn=super.getConnection();
		try {
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1,tid);
			res=stmt.executeQuery();
			while(res.next()){
				Sight sight=new Sight();
				sight.setSid(res.getInt(1));
				sight.setSname(res.getString(2));
				sight.setSprice(res.getInt(3));
				sight.setSintro(res.getString(4));
				sight.setSphoto(res.getString(5));
				sight.setTid(res.getInt(6));
				sight.setDid(res.getInt(7));
				sight.setSday(res.getInt(8));
				sight.setSway(res.getString(9));
				sight.setSoprice(res.getInt(10));
				list.add(sight);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, res, stmt);
		}
		return list;
	}
}
