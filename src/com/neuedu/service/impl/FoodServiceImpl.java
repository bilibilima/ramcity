package com.neuedu.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.dao.*;
import com.neuedu.model.*;
import com.neuedu.service.*;

@Service
public class FoodServiceImpl implements FoodService {

	@Autowired
	private FoodDao xxd;
	public void setFood(FoodDao xxd) {
		this.xxd = xxd;
	}		
	
	
	
	@Override
	public int countFood() {
		// TODO 自动生成的方法存根
		return xxd.countFood();
	}

	@Override
	public int addFood(Food u) {
		// TODO 自动生成的方法存根
		return xxd.addFood(u);
	}

	@Override
	public int updateFood(Food u) {
		// TODO 自动生成的方法存根
		return xxd.updateFood(u);
	}

	@Override
	public int deleteFood(int id) {
		// TODO 自动生成的方法存根
		return xxd.deleteFood(id);
	}



	@Override
	public List<Food> getAll(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return xxd.findAll(map);
	}



	@Override
	public List<Food> getFood(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return xxd.findFood(map);
	}

}
