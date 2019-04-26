package com.neuedu.dao;

import java.util.List;
import java.util.Map;

import com.neuedu.model.*;

public interface MessageDao {
	//统计
	public int countMessage();
	
	//查找
	public List<Message> findAll(Map<String, Object> map);
	
	//添加
	public int addMessage(Message u);
	
	//更新
	public int updateMessage(Message u);
	
	//删除
	public int deleteMessage(int id);
	
	//(前台)查询
	public List<Message> findMessage(Map<String, Object> map);	
	
	
}
