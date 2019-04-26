package com.neuedu.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.dao.*;
import com.neuedu.model.*;
import com.neuedu.service.*;

@Service
public class TeamServiceImpl implements TeamService {

	@Autowired
	private TeamDao xxd;
	public void setTeam(TeamDao xxd) {
		this.xxd = xxd;
	}		
	
	
	
	@Override
	public List<Team> getAll(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return xxd.findAll(map);
	}

	@Override
	public int countTeam() {
		// TODO 自动生成的方法存根
		return xxd.countTeam();
	}

	@Override
	public int addTeam(Team u) {
		// TODO 自动生成的方法存根
		return xxd.addTeam(u);
	}

	@Override
	public int updateTeam(Team u) {
		// TODO 自动生成的方法存根
		return xxd.updateTeam(u);
	}

	@Override
	public int deleteTeam(int id) {
		// TODO 自动生成的方法存根
		return xxd.deleteTeam(id);
	}



	@Override
	public List<Team> getTeam(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return xxd.findTeam(map);
	}

}
