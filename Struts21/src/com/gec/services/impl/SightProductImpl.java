package com.gec.services.impl;

import java.util.List;

import com.gec.dao.SightDao;
import com.gec.dao.impl.SightDaoImpl;
import com.gec.entiy.Sight;
import com.gec.services.SightProduct;

public class SightProductImpl implements SightProduct {
	SightDao sd=new SightDaoImpl();
	@Override
	public List<Sight> Top6Product(int tid) {
		return sd.top6(tid);
	}

	@Override
	public List<Sight> Top8Product(int tid) {
		
		return sd.top8(tid);
	}
	
	@Override
	public Sight sightInfo(String sname) {
		SightDao sd=new SightDaoImpl();
		return sd.selectInfo(sname);
	}

	@Override
	public List<Sight> top3(int tid) {
		// TODO Auto-generated method stub
		return sd.top3(tid);
	}

	@Override
	public List<Sight> Top10Product(int tid) {
		// TODO Auto-generated method stub
		return  sd.top10(tid);
	}
	

}
