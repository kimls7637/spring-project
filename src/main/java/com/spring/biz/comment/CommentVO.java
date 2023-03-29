package com.spring.biz.comment;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component
public class CommentVO {
	private int cNum;
	private int cGroup;
	private int cSequence;
	private String cContent;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date cDate;
	private String cId; 
	private int cBnum;
	private String mNickName; 
	private int reportCnt;
	private int heartCnt;
	private int cBlind;
	private String adminCtrlrNum;
	private int myheart;
	private String grade;
	
	public int getMyheart() {
		return myheart;
	}
	public void setMyheart(int myheart) {
		this.myheart = myheart;
	}
	public String getAdminCtrlrNum() {
		return adminCtrlrNum;
	}
	public void setAdminCtrlrNum(String adminCtrlrNum) {
		this.adminCtrlrNum = adminCtrlrNum;
	}
	
	public String getmNickName() {
		return mNickName;
	}
	public void setmNickName(String mNickName) {
		this.mNickName = mNickName;
	}
	public int getReportCnt() {
		return reportCnt;
	}
	public void setReportCnt(int reportCnt) {
		this.reportCnt = reportCnt;
	}
	public int getcNum() {
		return cNum;
	}
	public void setcNum(int cNum) {
		this.cNum = cNum;
	}
	public int getcGroup() {
		return cGroup;
	}
	public void setcGroup(int cGroup) {
		this.cGroup = cGroup;
	}
	public int getcSequence() {
		return cSequence;
	}
	public void setcSequence(int cSequence) {
		this.cSequence = cSequence;
	}
	public String getcContent() {
		return cContent;
	}
	public void setcContent(String cContent) {
		this.cContent = cContent;
	}
	public Date getcDate() {
		return cDate;
	}
	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
		this.cId = cId;
	}
	public int getcBnum() {
		return cBnum;
	}
	public void setcBnum(int cBnum) {
		this.cBnum = cBnum;
	}
	public int getHeartCnt() {
		return heartCnt;
	}
	public void setHeartCnt(int heartCnt) {
		this.heartCnt = heartCnt;
	}
	public int getcBlind() {
		return cBlind;
	}
	public void setcBlind(int cBlind) {
		this.cBlind = cBlind;
	}
	
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	@Override
	public String toString() {
		return "CommentVO [cNum=" + cNum + ", cGroup=" + cGroup + ", cSequence=" + cSequence + ", cContent=" + cContent
				+ ", cDate=" + cDate + ", cId=" + cId + ", cBnum=" + cBnum + ", mNickName=" + mNickName + ", reportCnt="
				+ reportCnt + ", heartCnt=" + heartCnt + ", cBlind=" + cBlind + ", adminCtrlrNum=" + adminCtrlrNum
				+ ", myheart=" + myheart + ", grade=" + grade + "]";
	}
	
}
