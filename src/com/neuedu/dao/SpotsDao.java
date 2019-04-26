package com.neuedu.dao;

import java.util.List;
import java.util.Map;

import com.neuedu.model.*;

public interface SpotsDao {

	//统计
	public int countSpots();
	
	//查找
	public List<Spots> findAll(Map<String, Object> map);
	
	//添加
	public int addSpots(Spots u);
	
	//更新
	public int updateSpots(Spots u);
	
	//删除
	public int deleteSpots(int id);	
	
	//(前台)查询
	public List<Spots> findSpots(Map<String, Object> map);
	
	
	
}
