package com.spring.biz.report;

public class ReportVO {
	private int rnum;
	private String rtype;
	private String rid;
	private String rbnum;
	private int myReport;
	private int reset;
	private String adminCtrlrNum;
	private String adminCtrlbNum;
	
	public String getAdminCtrlbNum() {
		return adminCtrlbNum;
	}
	public void setAdminCtrlbNum(String adminCtrlbNum) {
		this.adminCtrlbNum = adminCtrlbNum;
	}
	public String getAdminCtrlrNum() {
		return adminCtrlrNum;
	}
	public void setAdminCtrlrNum(String adminCtrlrNum) {
		this.adminCtrlrNum = adminCtrlrNum;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public String getRtype() {
		return rtype;
	}
	public void setRtype(String rtype) {
		this.rtype = rtype;
	}
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getRbnum() {
		return rbnum;
	}
	public void setRbnum(String rbnum) {
		this.rbnum = rbnum;
	}
	public int getMyReport() {
		return myReport;
	}
	public void setMyReport(int myReport) {
		this.myReport = myReport;
	}
	public int getReset() {
		return reset;
	}
	public void setReset(int reset) {
		this.reset = reset;
	}
	@Override
	public String toString() {
		return "ReportVO [rnum=" + rnum + ", rtype=" + rtype + ", rid=" + rid + ", rbnum=" + rbnum + ", myReport="
				+ myReport + ", reset=" + reset + ", adminCtrlrNum=" + adminCtrlrNum + ", adminCtrlbNum="
				+ adminCtrlbNum + "]";
	}
	

}