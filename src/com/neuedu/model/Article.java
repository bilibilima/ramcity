package com.neuedu.model;

import java.util.Date;

public class Article {

	private int writeId;
	private String wtype;
	private String writeTime;
	private String writeTitle;
	private String writeText;
	private int issuer;
	public Article() {
		super();
		// TODO 自动生成的构造函数存根
	}
	public Article(int writeId, String wtype, String writeTime, String writeTitle, String writeText, int issuer) {
		super();
		this.writeId = writeId;
		this.wtype = wtype;
		this.writeTime = writeTime;
		this.writeTitle = writeTitle;
		this.writeText = writeText;
		this.issuer = issuer;
	}
	public int getWriteId() {
		return writeId;
	}
	public void setWriteId(int writeId) {
		this.writeId = writeId;
	}
	public String getWtype() {
		return wtype;
	}
	public void setWtype(String wtype) {
		this.wtype = wtype;
	}

	public String getWriteTime() {
		return writeTime;
	}
	public void setWriteTime(String writeTime) {
		this.writeTime = writeTime;
	}
	public String getWriteTitle() {
		return writeTitle;
	}
	public void setWriteTitle(String writeTitle) {
		this.writeTitle = writeTitle;
	}
	public String getWriteText() {
		return writeText;
	}
	public void setWriteText(String writeText) {
		this.writeText = writeText;
	}
	public int getIssuer() {
		return issuer;
	}
	public void setIssuer(int issuer) {
		this.issuer = issuer;
	}
	
	
	
	
	
	
	
}
