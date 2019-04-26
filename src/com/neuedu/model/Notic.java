package com.neuedu.model;

import java.util.Date;

public class Notic {
	private int noticId;
	private String noticName;
	private String noticText;
	private Date noticTime;
	public Notic() {
		super();
		// TODO 自动生成的构造函数存根
	}
	public Notic(int noticId, String noticName, String noticText, Date noticTime) {
		super();
		this.noticId = noticId;
		this.noticName = noticName;
		this.noticText = noticText;
		this.noticTime = noticTime;
	}
	public int getNoticId() {
		return noticId;
	}
	public void setNoticId(int noticId) {
		this.noticId = noticId;
	}
	public String getNoticName() {
		return noticName;
	}
	public void setNoticName(String noticName) {
		this.noticName = noticName;
	}
	public String getNoticText() {
		return noticText;
	}
	public void setNoticText(String noticText) {
		this.noticText = noticText;
	}
	public Date getNoticTime() {
		return noticTime;
	}
	public void setNoticTime(Date noticTime) {
		this.noticTime = noticTime;
	}
	
	
	
	
	
	
	

}
