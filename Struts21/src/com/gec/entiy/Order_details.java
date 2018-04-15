package com.gec.entiy;

public class Order_details {

	private int did;
	private int sid;
	private int oid;
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public Order_details() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Order_details(int did, int sid, int oid) {
		super();
		this.did = did;
		this.sid = sid;
		this.oid = oid;
	}
	
}
