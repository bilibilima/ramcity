package com.neuedu.dao;

import java.util.List;
import java.util.Map;

import com.neuedu.model.*;

public interface PeopleDao {

	//统计
	public int countPeople();
	
	//查找
	public List<People> findAll(Map<String, Object> map);
	
	//添加
	public int addPeople(People u);
	
	//更新
	public int updatePeople(People u);
	
	//删除
	public int deletePeople(int id);
	
	//登录
	public People login(People u);
	
	//(前台)查询
	public List<People> findPeople(Map<String, Object> map);		
	
}
