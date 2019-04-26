package com.neuedu.service;

import java.util.List;
import java.util.Map;

import com.neuedu.model.*;

public interface SpotsService {

	//查找
	public List<Spots> getAll(Map<String,Object> map);
	
	//统计
	public int countSpots();
	
	//添加
	public int addSpots(Spots u);
	
	//更新
	public int updateSpots(Spots u);
	
	//删除
	public int deleteSpots(int id);	
		
	//(前台)查找
	public List<Spots> getSpots(Map<String,Object> map);	
	
	
}
