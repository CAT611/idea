package com.gec.services;

import java.util.List;

import com.gec.entiy.Groupon;
import com.gec.entiy.Sight;

public interface Group {
	public Groupon selectDetails(String gname);
	
	public List<Groupon> getGroup(int a);
	
	public int getcount();
}
