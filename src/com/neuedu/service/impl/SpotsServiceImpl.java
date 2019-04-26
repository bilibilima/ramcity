package com.neuedu.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.dao.*;
import com.neuedu.model.*;
import com.neuedu.service.*;


@Service
public class SpotsServiceImpl implements SpotsService {

	@Autowired
	private SpotsDao xxd;
	public void setSpots(SpotsDao xxd) {
		this.xxd = xxd;
	}	
	
	
	
	@Override
	public List<Spots> getAll(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return xxd.findAll(map);
	}

	@Override
	public int countSpots() {
		// TODO 自动生成的方法存根
		return xxd.countSpots();
	}

	@Override
	public int addSpots(Spots u) {
		// TODO 自动生成的方法存根
		return xxd.addSpots(u);
	}

	@Override
	public int updateSpots(Spots u) {
		// TODO 自动生成的方法存根
		return xxd.updateSpots(u);
	}

	@Override
	public int deleteSpots(int id) {
		// TODO 自动生成的方法存根
		return xxd.deleteSpots(id);
	}



	@Override
	public List<Spots> getSpots(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return xxd.findSpots(map);
	}

}
