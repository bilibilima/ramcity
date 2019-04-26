package com.neuedu.service;

import java.util.List;
import java.util.Map;

import com.neuedu.model.*;

public interface TeamService {

	//查找
	public List<Team> getAll(Map<String,Object> map);
	
	//统计
	public int countTeam();
	
	//添加
	public int addTeam(Team u);
	
	//更新
	public int updateTeam(Team u);
	
	//删除
	public int deleteTeam(int id);	
	
	//(前台)查找
	public List<Team> getTeam(Map<String,Object> map);
		
}
