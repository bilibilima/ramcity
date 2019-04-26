package com.neuedu.model;

public class Food {

	private int foodId;
	private String foodType;
	//private int fwriteId;
	
	private Article article;
	
	
	private String foodName;
	private String foodPhoto;
	public Food() {
		super();
		// TODO 自动生成的构造函数存根
	}
	public Food(int foodId, String foodType, Article article, String foodName, String foodPhoto) {
		super();
		this.foodId = foodId;
		this.foodType = foodType;
		this.article = article;
		this.foodName = foodName;
		this.foodPhoto = foodPhoto;
	}
	public int getFoodId() {
		return foodId;
	}
	public void setFoodId(int foodId) {
		this.foodId = foodId;
	}
	public String getFoodType() {
		return foodType;
	}
	public void setFoodType(String foodType) {
		this.foodType = foodType;
	}
	
	
	
	
	
	public Article getArticle() {
		return article;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public String getFoodPhoto() {
		return foodPhoto;
	}
	public void setFoodPhoto(String foodPhoto) {
		this.foodPhoto = foodPhoto;
	}
	
	
}
