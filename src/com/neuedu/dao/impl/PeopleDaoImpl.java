package com.neuedu.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neuedu.dao.PeopleDao;
import com.neuedu.model.People;


@Repository
public class PeopleDaoImpl implements PeopleDao {

	@Autowired
	private SqlSessionTemplate sst;
	public void setSqlSessionTemplate(SqlSessionTemplate sst) {
		this.sst = sst;
	}
	
	
	
	@Override
	public int countPeople() {
		// TODO 自动生成的方法存根
		return sst.getMapper(PeopleDao.class).countPeople();
	}

	@Override
	public List<People> findAll(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return sst.getMapper(PeopleDao.class).findAll(map);
	}

	@Override
	public int addPeople(People u) {
		// TODO 自动生成的方法存根
		return sst.getMapper(PeopleDao.class).addPeople(u);
	}

	@Override
	public int updatePeople(People u) {
		// TODO 自动生成的方法存根
		return sst.getMapper(PeopleDao.class).updatePeople(u);
	}

	@Override
	public int deletePeople(int id) {
		// TODO 自动生成的方法存根
		return sst.getMapper(PeopleDao.class).deletePeople(id);
	}

	@Override
	public People login(People u) {
		// TODO 自动生成的方法存根
		return sst.getMapper(PeopleDao.class).login(u);
	}



	@Override
	public List<People> findPeople(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return sst.getMapper(PeopleDao.class).findPeople(map);
	}

}
