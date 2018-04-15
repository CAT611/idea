package com.gec.entiy;

public class Users {

	private int uid;
	private String uname;
	private String upwd;
	private String ucard;
	private String uphone;
	private String usex;
	private int tid;
	private int oid;
	public String getUcard() {
		return ucard;
	}
	public void setUcard(String ucard) {
		this.ucard = ucard;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	public String getUsex() {
		return usex;
	}
	public void setUsex(String usex) {
		this.usex = usex;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Users(int uid, String uname, String upwd, int tid, int oid) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.upwd = upwd;
		this.tid = tid;
		this.oid = oid;
	}
	
}
