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
@RequestMapping(value = "/notic")
public class NoticAction {

	@Autowired
	private NoticService xxs;
	
	//查找
	@RequestMapping(value = "/findAll")
	public void findAll(HttpServletRequest request,HttpServletResponse response)throws Exception{
		
		int page=Integer.parseInt(request.getParameter("page"));
		int rows=Integer.parseInt(request.getParameter("rows"));
		
		Map<String, Object> map=new HashMap<String, Object>();
		Map<String, Object> pageMap=new HashMap<String, Object>();
		
		pageMap.put("startPage", (page-1)*rows);
		pageMap.put("endPage", rows);
		
		List<Notic> u= xxs.getAll(pageMap);
		int total=xxs.countNotic();
		map.put("rows", u);
		map.put("total", total);
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);
	}	
	
	//添加
	@RequestMapping(value="addNotic")
	public void addNotic(Notic xxt,HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		
		int res = xxs.addNotic(xxt);
		System.out.println("addNotic 受影响数："+res);
		
		Map<String, Object> map = new HashMap<String, Object>();
		if(res>0){
			map.put("success", true);
		}else{
			map.put("success", false);
			map.put("errorMsg", "Add Notic fail !!!");
		}		
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);			
		
	}				
	
	
	//更新
	@RequestMapping(value="updateNotic")
	public void updateNotic(Notic xxt,HttpServletRequest request,HttpServletResponse response) throws Exception{

		int res = xxs.updateNotic(xxt);
		System.out.println("updateNotic 受影响数："+res);
		Map<String, Object> map=new HashMap<String, Object>();
		if(res>0){
			map.put("success", true);
		}else{
			map.put("success", false);
			map.put("errorMsg", "update Notic fail !!!");
		}
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);	
		
	}	
	
	//删除
	@RequestMapping(value="deleteNotic")
	public void deleteNotic(HttpServletRequest request,HttpServletResponse response) throws Exception{

		int noid=Integer.parseInt(request.getParameter("noticId"));
		
		System.out.println("deleteNotic 受影响数："+noid);
		
		int res = xxs.deleteNotic(noid);
		
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
	
	
}
