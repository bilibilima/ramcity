package com.neuedu.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.dao.*;
import com.neuedu.model.*;
import com.neuedu.service.*;


@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private ArticleDao xxd;
	public void setWrite(ArticleDao xxd) {
		this.xxd = xxd;
	}		
	
	
	@Override
	public List<Article> getAll(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return xxd.findAll(map);
	}

	@Override
	public int countArticle() {
		// TODO 自动生成的方法存根
		return xxd.countArticle();
	}

	@Override
	public int addArticle(Article u) {
		// TODO 自动生成的方法存根
		return xxd.addArticle(u);
	}

	@Override
	public int updateArticle(Article u) {
		// TODO 自动生成的方法存根
		return xxd.updateArticle(u);
	}

	@Override
	public int deleteArticle(int id) {
		// TODO 自动生成的方法存根
		return xxd.deleteArticle(id);
	}


	@Override
	public List<Article> findList() {
		// TODO 自动生成的方法存根
		return xxd.findList();
	}


	@Override
	public List<Article> getArticle(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return xxd.findArticle(map);
	}

}
