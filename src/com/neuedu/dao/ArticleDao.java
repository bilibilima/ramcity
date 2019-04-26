package com.neuedu.dao;

import java.util.List;
import java.util.Map;

import com.neuedu.model.*;

public interface ArticleDao {

	//统计
	public int countArticle();
	
	//查找
	public List<Article> findAll(Map<String, Object> map);
	
	//添加
	public int addArticle(Article u);
	
	//更新
	public int updateArticle(Article u);
	
	//删除
	public int deleteArticle(int id);	
	
	//（外键）
	public List<Article> findList();
	
	//(前台)查询
	public List<Article> findArticle(Map<String, Object> map);
	
	
	
}
