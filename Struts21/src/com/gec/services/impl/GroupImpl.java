package com.gec.services.impl;

import java.util.List;

import com.gec.dao.GrouponDao;
import com.gec.dao.SightDao;
import com.gec.dao.impl.GrouponDaoImpl;
import com.gec.dao.impl.SightDaoImpl;
import com.gec.entiy.Groupon;
import com.gec.entiy.Sight;
import com.gec.services.Group;

public class GroupImpl implements Group {

	GrouponDao go=new GrouponDaoImpl();
	@Override
	public Groupon selectDetails(String gname) {
		return go.SelectByName(gname);
	}

	@Override
	public List<Groupon> getGroup(int a) {
		return go.getGroup(a);
	}

	@Override
	public int getcount() {
		return go.getcount();
	}
}
