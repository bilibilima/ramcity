package com.neuedu.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONObject;
import com.neuedu.model.*;
import com.neuedu.service.*;

@Controller
@RequestMapping(value = "/article")
public class ArticleAction {

	@Autowired
	private ArticleService xxs;		
	
	//查找
	@RequestMapping(value = "/findAll")
	public void findAll(HttpServletRequest request,HttpServletResponse response)throws Exception{
		
		int page=Integer.parseInt(request.getParameter("page"));
		int rows=Integer.parseInt(request.getParameter("rows"));
		
		Map<String, Object> map=new HashMap<String, Object>();
		Map<String, Object> pageMap=new HashMap<String, Object>();
		
		pageMap.put("startPage", (page-1)*rows);
		pageMap.put("endPage", rows);
		
		List<Article> u= xxs.getAll(pageMap);
		int total=xxs.countArticle();
		map.put("rows", u);
		map.put("total", total);
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);
	}	
	
	//添加
	@RequestMapping(value="addArticle")
	public void addArticle(Article xxt,HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		
		int res = xxs.addArticle(xxt);
		System.out.println("addWrite 受影响数："+res);
		
		Map<String, Object> map = new HashMap<String, Object>();
		if(res>0){
			map.put("success", true);
		}else{
			map.put("success", false);
			map.put("errorMsg", "Add Article fail !!!");
		}		
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);			
		
	}				
	
	
	//更新
	@RequestMapping(value="updateArticle")
	public void updateArticle(Article xxt,HttpServletRequest request,HttpServletResponse response) throws Exception{

		int res = xxs.updateArticle(xxt);
		System.out.println("updateWrite 受影响数："+res);
		Map<String, Object> map=new HashMap<String, Object>();
		if(res>0){
			map.put("success", true);
		}else{
			map.put("success", false);
			map.put("errorMsg", "update Article fail !!!");
		}
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);	
		
	}	
	
	
	//删除
	@RequestMapping(value="deleteArticle")
	public void deleteArticle(HttpServletRequest request,HttpServletResponse response) throws Exception{

		int noid=Integer.parseInt(request.getParameter("writeId"));
		
		System.out.println("deleteArticle 受影响数："+noid);
		
		int res = xxs.deleteArticle(noid);
		
		Map<String, Object> map=new HashMap<String, Object>();
		if(res>0){
			map.put("success", true);
		}else{
			map.put("success", false);
			map.put("errorMsg", "delete Write fail !!!");
		}
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);
		
	}		
	
	
	//（外键）查找
	@RequestMapping(value = "/findList")
	public void findList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Article> list = xxs.findList();
		
		String str = JSONObject.toJSONString(list);
		response.getWriter().write(str);
	}
	
	
	
	
	
	
	
	
	
}
