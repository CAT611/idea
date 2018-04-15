package com.gec.dao;

import java.util.List;

import com.gec.entiy.Groupon;

public interface GrouponDao {
	
	public Groupon SelectByName(String gname);
	
	public List<Groupon> getGroup(int a);
	
	public int getcount();
}

