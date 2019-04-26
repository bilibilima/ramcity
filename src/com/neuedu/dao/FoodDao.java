package com.neuedu.dao;

import java.util.List;
import java.util.Map;

import com.neuedu.model.*;

public interface FoodDao {

	//统计
	public int countFood();
	
	//查找
	public List<Food> findAll(Map<String, Object> map);
	
	//添加
	public int addFood(Food u);
	
	//更新
	public int updateFood(Food u);
	
	//删除
	public int deleteFood(int id);	
	
	//(前台)查询
	public List<Food> findFood(Map<String, Object> map);
	
	
	
}
