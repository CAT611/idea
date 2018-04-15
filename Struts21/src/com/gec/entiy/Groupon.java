package com.gec.entiy;

public class Groupon {

	private int gid;
	private String gname;
	private int oldPrice;
	private int gprice;
	private String gintro;
	private String gphoto ;
	private int gday;
	public int getOldPrice() {
		return oldPrice;
	}
	public void setOldPrice(int oldPrice) {
		this.oldPrice = oldPrice;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public int getGprice() {
		return gprice;
	}
	public void setGprice(int gprice) {
		this.gprice = gprice;
	}
	public String getGintro() {
		return gintro;
	}
	public void setGintro(String gintro) {
		this.gintro = gintro;
	}
	public String getGphoto() {
		return gphoto;
	}
	public void setGphoto(String gphoto) {
		this.gphoto = gphoto;
	}
	public int getGday() {
		return gday;
	}
	public void setGday(int gday) {
		this.gday = gday;
	}
	public Groupon() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Groupon(int gid, String gname, int gprice, String gintro,
			String gphoto, int gday) {
		super();
		this.gid = gid;
		this.gname = gname;
		this.gprice = gprice;
		this.gintro = gintro;
		this.gphoto = gphoto;
		this.gday = gday;
	}
	
}

