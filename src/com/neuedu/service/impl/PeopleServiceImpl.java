package com.neuedu.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.dao.*;
import com.neuedu.model.*;
import com.neuedu.service.PeopleService;


@Service
public class PeopleServiceImpl implements PeopleService {

	@Autowired
	private PeopleDao xxd;
	public void setPeople(PeopleDao xxd) {
		this.xxd = xxd;
	}		
	
	
	
	@Override
	public List<People> getAll(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return xxd.findAll(map);
	}

	@Override
	public int countPeople() {
		// TODO 自动生成的方法存根
		return xxd.countPeople();
	}

	@Override
	public int addPeople(People u) {
		// TODO 自动生成的方法存根
		return xxd.addPeople(u);
	}

	@Override
	public int updatePeople(People u) {
		// TODO 自动生成的方法存根
		return xxd.updatePeople(u);
	}

	@Override
	public int deletePeople(int id) {
		// TODO 自动生成的方法存根
		return xxd.deletePeople(id);
	}

	@Override
	public People login(People u) {
		// TODO 自动生成的方法存根
		return xxd.login(u);
	}



	@Override
	public List<People> getPeople(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return xxd.findPeople(map);
	}

}
