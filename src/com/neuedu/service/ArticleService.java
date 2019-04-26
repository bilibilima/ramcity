package com.neuedu.service;

import java.util.List;
import java.util.Map;

import com.neuedu.model.*;

public interface ArticleService {

	//查找
	public List<Article> getAll(Map<String,Object> map);
	
	//统计
	public int countArticle();
	
	//添加
	public int addArticle(Article u);
	
	//更新
	public int updateArticle(Article u);
	
	//删除
	public int deleteArticle(int id);	
	
	//（外键）
	public List<Article> findList();
	
	//(前台)查找
	public List<Article> getArticle(Map<String,Object> map);
	
	
}
