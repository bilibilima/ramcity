package com.neuedu.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neuedu.dao.ArticleDao;
import com.neuedu.model.Article;



@Repository
public class ArticleDaoImpl implements ArticleDao {

	@Autowired
	private SqlSessionTemplate sst;
	public void setSqlSessionTemplate(SqlSessionTemplate sst) {
		this.sst = sst;
	}	
	
	
	@Override
	public int countArticle() {
		// TODO 自动生成的方法存根
		return sst.getMapper(ArticleDao.class).countArticle();
	}

	@Override
	public List<Article> findAll(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return sst.getMapper(ArticleDao.class).findAll(map);
	}

	@Override
	public int addArticle(Article u) {
		// TODO 自动生成的方法存根
		return sst.getMapper(ArticleDao.class).addArticle(u);
	}

	@Override
	public int updateArticle(Article u) {
		// TODO 自动生成的方法存根
		return sst.getMapper(ArticleDao.class).updateArticle(u);
	}

	@Override
	public int deleteArticle(int id) {
		// TODO 自动生成的方法存根
		return sst.getMapper(ArticleDao.class).deleteArticle(id);
	}


	@Override
	public List<Article> findList() {
		// TODO 自动生成的方法存根
		return sst.getMapper(ArticleDao.class).findList();
	}


	@Override
	public List<Article> findArticle(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return sst.getMapper(ArticleDao.class).findArticle(map);
	}

}
