package com.neuedu.model;

public class People {
	private int peopleId;
	private String peopleName;
	private String passWord;
	private int status;
	private String qq;
	private String mail;
	private String address;
	public People() {
		super();
		// TODO 自动生成的构造函数存根
	}
	public People(int peopleId, String peopleName, String passWord, int status, String qq, String mail,
			String address) {
		super();
		this.peopleId = peopleId;
		this.peopleName = peopleName;
		this.passWord = passWord;
		this.status = status;
		this.qq = qq;
		this.mail = mail;
		this.address = address;
	}
	public int getPeopleId() {
		return peopleId;
	}
	public void setPeopleId(int peopleId) {
		this.peopleId = peopleId;
	}
	public String getPeopleName() {
		return peopleName;
	}
	public void setPeopleName(String peopleName) {
		this.peopleName = peopleName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	

}
