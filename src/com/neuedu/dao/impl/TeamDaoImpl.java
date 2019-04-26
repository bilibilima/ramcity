package com.neuedu.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neuedu.dao.*;
import com.neuedu.model.*;

@Repository
public class TeamDaoImpl implements TeamDao {

	@Autowired
	private SqlSessionTemplate sst;
	public void setSqlSessionTemplate(SqlSessionTemplate sst) {
		this.sst = sst;
	}		
	
	
	
	@Override
	public int countTeam() {
		// TODO 自动生成的方法存根
		return sst.getMapper(TeamDao.class).countTeam();
	}

	@Override
	public List<Team> findAll(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return sst.getMapper(TeamDao.class).findAll(map);
	}

	@Override
	public int addTeam(Team u) {
		// TODO 自动生成的方法存根
		return sst.getMapper(TeamDao.class).addTeam(u);
	}

	@Override
	public int updateTeam(Team u) {
		// TODO 自动生成的方法存根
		return sst.getMapper(TeamDao.class).updateTeam(u);
	}

	@Override
	public int deleteTeam(int id) {
		// TODO 自动生成的方法存根
		return sst.getMapper(TeamDao.class).deleteTeam(id);
	}



	@Override
	public List<Team> findTeam(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return sst.getMapper(TeamDao.class).findTeam(map);
	}

}
