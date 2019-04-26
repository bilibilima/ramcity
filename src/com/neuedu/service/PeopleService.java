package com.neuedu.service;

import java.util.List;
import java.util.Map;

import com.neuedu.model.*;

public interface PeopleService {

	//查找
	public List<People> getAll(Map<String,Object> map);
	
	//统计
	public int countPeople();
	
	//添加
	public int addPeople(People u);
	
	//更新
	public int updatePeople(People u);
	
	//删除
	public int deletePeople(int id);
	
	//登录
	public People login(People u);
	
	
	//(前台)查找
	public List<People> getPeople(Map<String,Object> map);	
	
	
}
