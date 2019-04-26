package com.neuedu.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neuedu.dao.FoodDao;
import com.neuedu.model.Food;

@Repository
public class FoodDaoImpl implements FoodDao {

	@Autowired
	private SqlSessionTemplate sst;
	public void setSqlSessionTemplate(SqlSessionTemplate sst) {
		this.sst = sst;
	}		
	
	
	@Override
	public int countFood() {
		// TODO 自动生成的方法存根
		return sst.getMapper(FoodDao.class).countFood();
	}

	@Override
	public List<Food> findAll(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return sst.getMapper(FoodDao.class).findAll(map);
	}

	@Override
	public int addFood(Food u) {
		// TODO 自动生成的方法存根
		return sst.getMapper(FoodDao.class).addFood(u);
	}

	@Override
	public int updateFood(Food u) {
		// TODO 自动生成的方法存根
		return sst.getMapper(FoodDao.class).updateFood(u);
	}

	@Override
	public int deleteFood(int id) {
		// TODO 自动生成的方法存根
		return sst.getMapper(FoodDao.class).deleteFood(id);
	}


	@Override
	public List<Food> findFood(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return sst.getMapper(FoodDao.class).findFood(map);
	}

}
