package com.neuedu.model;

public class Message {
	
	private int mid;
	private String tel;
	private String sex;
	private String name;
	private String text;
	private String messTime;
	private String messType;
	public Message() {
		super();
		// TODO 自动生成的构造函数存根
	}
	public Message(int mid, String tel, String sex, String name, String text, String messTime, String messType) {
		super();
		this.mid = mid;
		this.tel = tel;
		this.sex = sex;
		this.name = name;
		this.text = text;
		this.messTime = messTime;
		this.messType = messType;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getMessTime() {
		return messTime;
	}
	public void setMessTime(String messTime) {
		this.messTime = messTime;
	}
	public String getMessType() {
		return messType;
	}
	public void setMessType(String messType) {
		this.messType = messType;
	}
	
	
	
	
	
	
	
}
