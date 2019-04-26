package com.neuedu.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neuedu.dao.SpotsDao;
import com.neuedu.model.Spots;


@Repository
public class SpotsDaoImpl implements SpotsDao {

	@Autowired
	private SqlSessionTemplate sst;
	public void setSqlSessionTemplate(SqlSessionTemplate sst) {
		this.sst = sst;
	}		
	
	
	
	@Override
	public int countSpots() {
		// TODO 自动生成的方法存根
		return sst.getMapper(SpotsDao.class).countSpots();
	}

	@Override
	public List<Spots> findAll(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return sst.getMapper(SpotsDao.class).findAll(map);
	}

	@Override
	public int addSpots(Spots u) {
		// TODO 自动生成的方法存根
		return sst.getMapper(SpotsDao.class).addSpots(u);
	}

	@Override
	public int updateSpots(Spots u) {
		// TODO 自动生成的方法存根
		return sst.getMapper(SpotsDao.class).updateSpots(u);
	}

	@Override
	public int deleteSpots(int id) {
		// TODO 自动生成的方法存根
		return sst.getMapper(SpotsDao.class).deleteSpots(id);
	}



	@Override
	public List<Spots> findSpots(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return sst.getMapper(SpotsDao.class).findSpots(map);
	}

}
