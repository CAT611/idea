package com.gec.entiy;

public class Sight_type {

	private int stid;
	private String type;
	public Sight_type() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getTid() {
		return stid;
	}
	public void setTid(int stid) {
		this.stid = stid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Sight_type(int stid, String type) {
		super();
		this.stid = stid;
		this.type = type;
	}
	
}
