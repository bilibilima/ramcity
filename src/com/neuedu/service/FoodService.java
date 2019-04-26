package com.neuedu.service;

import java.util.List;
import java.util.Map;

import com.neuedu.model.*;

public interface FoodService {
	//查找
	public List<Food> getAll(Map<String,Object> map);
	
	//统计
	public int countFood();
	
	//添加
	public int addFood(Food u);
	
	//更新
	public int updateFood(Food u);
	
	//删除
	public int deleteFood(int id);		

	//(前台)查找
	public List<Food> getFood(Map<String,Object> map);	
	
}
