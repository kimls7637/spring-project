package com.spring.biz.heart;

public class HeartVO {
	private int hnum;
	private String htype;
	private String hid;
	private int hbnum;
	private int heartCnt;
	private String hImgPath;
	
	
	public int getHnum() {
		return hnum;
	}
	public void setHnum(int hnum) {
		this.hnum = hnum;
	}
	public String getHtype() {
		return htype;
	}
	public void setHtype(String htype) {
		this.htype = htype;
	}
	public String getHid() {
		return hid;
	}
	public void setHid(String hid) {
		this.hid = hid;
	}
	public int getHbnum() {
		return hbnum;
	}
	public void setHbnum(int hbnum) {
		this.hbnum = hbnum;
	}
	public int getHeartCnt() {
		return heartCnt;
	}
	public void setHeartCnt(int heartCnt) {
		this.heartCnt = heartCnt;
	}
	public String gethImgPath() {
		return hImgPath;
	}
	public void sethImgPath(String hImgPath) {
		this.hImgPath = hImgPath;
	}
	@Override
	public String toString() {
		return "HeartVO [hnum=" + hnum + ", htype=" + htype + ", hid=" + hid + ", hbnum=" + hbnum + ", heartCnt="
				+ heartCnt + ", hImgPath=" + hImgPath + "]";
	}
	
	
}
