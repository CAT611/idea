package com.gec.services;

import java.util.List;

import com.gec.entiy.Sight;

public interface SightProduct {
	public List<Sight> top3(int tid);
	public List<Sight> Top6Product(int tid);
	public List<Sight> Top8Product(int tid);
	public List<Sight> Top10Product(int tid);
	public Sight sightInfo(String sname);
}
