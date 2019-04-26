package com.neuedu.service;

import java.util.List;
import java.util.Map;

import com.neuedu.model.*;

public interface MessageService {
	//查找
	public List<Message> getAll(Map<String,Object> map);
	
	//统计
	public int countMessage();
	
	//添加
	public int addMessage(Message u);
	
	//更新
	public int updateMessage(Message u);
	
	//删除
	public int deleteMessage(int id);
	
	//(前台)查找
	public List<Message> getMessage(Map<String,Object> map);		
	
}
