package com.gec.dao;

import java.util.List;

import com.gec.entiy.Sight;

public interface SightDao {
	public List<Sight> top3(int tid);
	public List<Sight> top6(int tid);
	public List<Sight> top8(int tid);
	public List<Sight> top10(int tid);
	public Sight selectInfo(String sname);
}
