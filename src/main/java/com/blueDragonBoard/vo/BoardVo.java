package com.blueDragonBoard.vo;

public class BoardVo {


	private int bNum=0; //글번호
	private String bName=""; //작성자
	private String bTitle=""; //제목
	private String bContent=""; //내용
	private String bDate; //작성일
	private String bPwd=""; //비밀번호
	private int Readcnt=0; //조회수
	
	
	public int getbNum() {
		return bNum;
	}
	public void setbNum(int bNum) {
		this.bNum = bNum;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public String getbDate() {
		return bDate;
	}
	public void setbDate(String bDate) {
		this.bDate = bDate;
	}
	public String getbPwd() {
		return bPwd;
	}
	public void setbPwd(String bPwd) {
		this.bPwd = bPwd;
	}
	public int getReadcnt() {
		return Readcnt;
	}
	public void setReadcnt(int readcnt) {
		Readcnt = readcnt;
	}
	
	
	
	
	
	
}
