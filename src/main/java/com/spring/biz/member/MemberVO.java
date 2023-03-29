package com.spring.biz.member;

import java.util.Date;

public class MemberVO {
	private String id;
	private String pw;
	private String mName;
	private String mNickname;
	private String mEmail;
	private String mEmailChk;
	private Date mJoinDate;
	private Date mStopDate;
	private String grade;
	private int reportCnt;
	private int heartCnt;
	private int mFlag;
	private String mAuthkey;
	private int memberCnt;
	private int benCnt;
	private int benDate;
	private int benFlag;
	private int pwFlag;
	
	
	
	
	public int getPwFlag() {
		return pwFlag;
	}
	public void setPwFlag(int pwFlag) {
		this.pwFlag = pwFlag;
	}
	public int getBenFlag() {
		return benFlag;
	}
	public void setBenFlag(int benFlag) {
		this.benFlag = benFlag;
	}
	public int getmFlag() {
		return mFlag;
	}
	public void setmFlag(int mFlag) {
		this.mFlag = mFlag;
	}
	public String getmAuthkey() {
		return mAuthkey;
	}
	public void setmAuthkey(String mAuthkey) {
		this.mAuthkey = mAuthkey;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmNickname() {
		return mNickname;
	}
	public void setmNickname(String mNickname) {
		this.mNickname = mNickname;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public String getmEmailChk() {
		return mEmailChk;
	}
	public void setmEmailChk(String mEmailChk) {
		this.mEmailChk = mEmailChk;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getReportCnt() {
		return reportCnt;
	}
	public void setReportCnt(int reportCnt) {
		this.reportCnt = reportCnt;
	}
	public int getHeartCnt() {
		return heartCnt;
	}
	public void setHeartCnt(int heartCnt) {
		this.heartCnt = heartCnt;
	}
	public int getMemberCnt() {
		return memberCnt;
	}
	public void setMemberCnt(int memberCnt) {
		this.memberCnt = memberCnt;
	}
	public int getBenCnt() {
		return benCnt;
	}
	public void setBenCnt(int benCnt) {
		this.benCnt = benCnt;
	}
	public int getBenDate() {
		return benDate;
	}
	public void setBenDate(int benDate) {
		this.benDate = benDate;
	}
	public Date getmJoinDate() {
		return mJoinDate;
	}
	public void setmJoinDate(Date mJoinDate) {
		this.mJoinDate = mJoinDate;
	}
	public Date getmStopDate() {
		return mStopDate;
	}
	public void setmStopDate(Date mStopDate) {
		this.mStopDate = mStopDate;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", mName=" + mName + ", mNickname=" + mNickname + ", mEmail="
				+ mEmail + ", mEmailChk=" + mEmailChk + ", mJoinDate=" + mJoinDate + ", mStopDate=" + mStopDate
				+ ", grade=" + grade + ", reportCnt=" + reportCnt + ", heartCnt=" + heartCnt + ", mFlag=" + mFlag
				+ ", mAuthkey=" + mAuthkey + ", memberCnt=" + memberCnt + ", benCnt=" + benCnt + ", benDate=" + benDate
				+ ", benFlag=" + benFlag + ", pwFlag=" + pwFlag + "]";
	}

	
	

	
	


}