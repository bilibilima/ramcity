package com.neuedu.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.dao.NoticDao;
import com.neuedu.dao.SpotsDao;
import com.neuedu.model.Notic;
import com.neuedu.service.NoticService;

@Service
public class NoticServiceImpl implements NoticService {

	@Autowired
	private NoticDao xxd;
	public void setNotic(NoticDao xxd) {
		this.xxd = xxd;
	}		
	
	
	
	
	@Override
	public List<Notic> getAll(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return xxd.findAll(map);
	}

	@Override
	public int countNotic() {
		// TODO 自动生成的方法存根
		return xxd.countNotic();
	}

	@Override
	public int addNotic(Notic u) {
		// TODO 自动生成的方法存根
		return xxd.addNotic(u);
	}

	@Override
	public int updateNotic(Notic u) {
		// TODO 自动生成的方法存根
		return xxd.updateNotic(u);
	}

	@Override
	public int deleteNotic(int id) {
		// TODO 自动生成的方法存根
		return xxd.deleteNotic(id);
	}




	@Override
	public List<Notic> getNotic(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return xxd.findNotic(map);
	}

}
