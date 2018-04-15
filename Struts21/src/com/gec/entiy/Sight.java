package com.gec.entiy;

public class Sight {

	private int sid;
	private String sname;
	private int soprice;
	public int getSoprice() {
		return soprice;
	}
	public void setSoprice(int soprice) {
		this.soprice = soprice;
	}
	private int sprice;
	private String sintro;
	private String sphoto;
	private int tid;
	private int did;
	private int sday;
	private String sway;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public int getSprice() {
		return sprice;
	}
	public void setSprice(int sprice) {
		this.sprice = sprice;
	}
	public String getSintro() {
		return sintro;
	}
	public void setSintro(String sintro) {
		this.sintro = sintro;
	}
	public String getSphoto() {
		return sphoto;
	}
	public void setSphoto(String sphoto) {
		this.sphoto = sphoto;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public int getSday() {
		return sday;
	}
	public void setSday(int sday) {
		this.sday = sday;
	}
	public String getSway() {
		return sway;
	}
	public void setSway(String sway) {
		this.sway = sway;
	}
	public Sight() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Sight(int sid, String sname, int sprice, String sintro,
			String sphoto, int tid, int did, int sday, String sway) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.sprice = sprice;
		this.sintro = sintro;
		this.sphoto = sphoto;
		this.tid = tid;
		this.did = did;
		this.sday = sday;
		this.sway = sway;
	}
	
}
