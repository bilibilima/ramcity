package com.neuedu.dao;

import java.util.List;
import java.util.Map;

import com.neuedu.model.*;

public interface NoticDao {
	//统计
	public int countNotic();
	
	//查找
	public List<Notic> findAll(Map<String, Object> map);
	
	//添加
	public int addNotic(Notic u);
	
	//更新
	public int updateNotic(Notic u);
	
	//删除
	public int deleteNotic(int id);
	
	//(前台)查询
	public List<Notic> findNotic(Map<String, Object> map);		
	
}
