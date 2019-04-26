package com.neuedu.service;

import java.util.List;
import java.util.Map;

import com.neuedu.model.*;

public interface NoticService {

	//查找
	public List<Notic> getAll(Map<String,Object> map);
	
	//统计
	public int countNotic();
	
	//添加
	public int addNotic(Notic u);
	
	//更新
	public int updateNotic(Notic u);
	
	//删除
	public int deleteNotic(int id);	
	
	
	//(前台)查找
	public List<Notic> getNotic(Map<String,Object> map);
}
