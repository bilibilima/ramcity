package com.neuedu.dao;

import java.util.List;
import java.util.Map;

import com.neuedu.model.*;

public interface TeamDao {

	//统计
	public int countTeam();
	
	//查找
	public List<Team> findAll(Map<String, Object> map);
	
	//添加
	public int addTeam(Team u);
	
	//更新
	public int updateTeam(Team u);
	
	//删除
	public int deleteTeam(int id);	

	//(前台)查询
	public List<Team> findTeam(Map<String, Object> map);
	
}
