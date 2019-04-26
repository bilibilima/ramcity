package com.neuedu.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.dao.*;
import com.neuedu.model.*;
import com.neuedu.service.*;

@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
	private MessageDao xxd;
	public void setMessage(MessageDao xxd) {
		this.xxd = xxd;
	}	
	
	
	
	
	@Override
	public List<Message> getAll(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return xxd.findAll(map);
	}

	@Override
	public int countMessage() {
		// TODO 自动生成的方法存根
		return xxd.countMessage();
	}

	@Override
	public int addMessage(Message u) {
		// TODO 自动生成的方法存根
		return xxd.addMessage(u);
	}

	@Override
	public int updateMessage(Message u) {
		// TODO 自动生成的方法存根
		return xxd.updateMessage(u);
	}

	@Override
	public int deleteMessage(int id) {
		// TODO 自动生成的方法存根
		return xxd.deleteMessage(id);
	}




	@Override
	public List<Message> getMessage(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return xxd.findMessage(map);
	}

}
