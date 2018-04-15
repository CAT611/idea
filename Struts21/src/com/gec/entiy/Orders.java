package com.gec.entiy;

import java.util.Date;

public class Orders {
	
	private int oid;
	private int did;
	private int oprice;
	private String odate;
	private int uid;
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public int getOprice() {
		return oprice;
	}
	public void setOprice(int oprice) {
		this.oprice = oprice;
	}
	public String getOdate() {
		return odate;
	}
	public void setOdate(String odate) {
		this.odate = odate;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public Orders(int oid, int did, int oprice, String odate, int uid) {
		super();
		this.oid = oid;
		this.did = did;
		this.oprice = oprice;
		this.odate = odate;
		this.uid = uid;
	}
	
}
