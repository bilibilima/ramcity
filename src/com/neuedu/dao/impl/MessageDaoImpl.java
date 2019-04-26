package com.neuedu.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neuedu.dao.MessageDao;
import com.neuedu.model.Message;


@Repository
public class MessageDaoImpl implements MessageDao {

	@Autowired
	private SqlSessionTemplate sst;
	public void setSqlSessionTemplate(SqlSessionTemplate sst) {
		this.sst = sst;
	}		
	
	
	
	@Override
	public int countMessage() {
		// TODO 自动生成的方法存根
		return sst.getMapper(MessageDao.class).countMessage();
	}

	@Override
	public List<Message> findAll(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return sst.getMapper(MessageDao.class).findAll(map);
	}

	@Override
	public int addMessage(Message u) {
		// TODO 自动生成的方法存根
		return sst.getMapper(MessageDao.class).addMessage(u);
	}

	@Override
	public int updateMessage(Message u) {
		// TODO 自动生成的方法存根
		return sst.getMapper(MessageDao.class).updateMessage(u);
	}

	@Override
	public int deleteMessage(int id) {
		// TODO 自动生成的方法存根
		return sst.getMapper(MessageDao.class).deleteMessage(id);
	}



	@Override
	public List<Message> findMessage(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return sst.getMapper(MessageDao.class).findMessage(map);
	}

}
