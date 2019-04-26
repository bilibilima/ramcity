package com.neuedu.model;

public class Spots {
	private int spotsId;
	private String spotsType;
	
	//private int swriteId;
	private Article article;
	
	
	private String spotsName;
	private String spotsImage;
	public Spots() {
		super();
		// TODO 自动生成的构造函数存根
	}
	public Spots(int spotsId, String spotsType, Article article, String spotsName, String spotsImage) {
		super();
		this.spotsId = spotsId;
		this.spotsType = spotsType;
		this.article = article;
		this.spotsName = spotsName;
		this.spotsImage = spotsImage;
	}
	public int getSpotsId() {
		return spotsId;
	}
	public void setSpotsId(int spotsId) {
		this.spotsId = spotsId;
	}
	public String getSpotsType() {
		return spotsType;
	}
	public void setSpotsType(String spotsType) {
		this.spotsType = spotsType;
	}
	public Article getArticle() {
		return article;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
	public String getSpotsName() {
		return spotsName;
	}
	public void setSpotsName(String spotsName) {
		this.spotsName = spotsName;
	}
	public String getSpotsImage() {
		return spotsImage;
	}
	public void setSpotsImage(String spotsImage) {
		this.spotsImage = spotsImage;
	}

	

}
