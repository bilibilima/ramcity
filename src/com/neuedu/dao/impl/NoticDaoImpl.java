package com.neuedu.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neuedu.dao.NoticDao;
import com.neuedu.model.Notic;

@Repository
public class NoticDaoImpl implements NoticDao {

	@Autowired
	private SqlSessionTemplate sst;
	public void setSqlSessionTemplate(SqlSessionTemplate sst) {
		this.sst = sst;
	}	
	
	
	
	@Override
	public int countNotic() {
		// TODO 自动生成的方法存根
		return sst.getMapper(NoticDao.class).countNotic();
	}

	@Override
	public List<Notic> findAll(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return sst.getMapper(NoticDao.class).findAll(map);
	}

	@Override
	public int addNotic(Notic u) {
		// TODO 自动生成的方法存根
		return sst.getMapper(NoticDao.class).addNotic(u);
	}

	@Override
	public int updateNotic(Notic u) {
		// TODO 自动生成的方法存根
		return sst.getMapper(NoticDao.class).updateNotic(u);
	}

	@Override
	public int deleteNotic(int id) {
		// TODO 自动生成的方法存根
		return sst.getMapper(NoticDao.class).deleteNotic(id);
	}



	@Override
	public List<Notic> findNotic(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return sst.getMapper(NoticDao.class).findNotic(map);
	}

}
