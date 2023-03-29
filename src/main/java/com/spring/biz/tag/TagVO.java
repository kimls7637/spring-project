package com.spring.biz.tag;

public class TagVO {
	private int tNum;
	private String tContent;
	private int tBnum;
	public int gettNum() {
		return tNum;
	}
	public void settNum(int tNum) {
		this.tNum = tNum;
	}
	public String gettContent() {
		return tContent;
	}
	public void settContent(String tContent) {
		this.tContent = tContent;
	}
	
	public int gettBnum() {
		return tBnum;
	}
	public void settBnum(int tBnum) {
		this.tBnum = tBnum;
	}
	@Override
	public String toString() {
		return "TagVO [tNum=" + tNum + ", tContent=" + tContent + ", tbNum=" + tBnum + "]";
	}
	
}
