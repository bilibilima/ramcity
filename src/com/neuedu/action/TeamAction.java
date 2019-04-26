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
@RequestMapping(value = "/team")
public class TeamAction {

	@Autowired
	private TeamService xxs;	
	
	//查找
	@RequestMapping(value = "/findAll")
	public void findAll(HttpServletRequest request,HttpServletResponse response)throws Exception{
		
		int page=Integer.parseInt(request.getParameter("page"));
		int rows=Integer.parseInt(request.getParameter("rows"));
		
		Map<String, Object> map=new HashMap<String, Object>();
		Map<String, Object> pageMap=new HashMap<String, Object>();
		
		pageMap.put("startPage", (page-1)*rows);
		pageMap.put("endPage", rows);
		
		List<Team> u= xxs.getAll(pageMap);
		int total=xxs.countTeam();
		map.put("rows", u);
		map.put("total", total);
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);
	}	
	
	//添加
	@RequestMapping(value="addTeam")
	public void addTeam(Team xxt,HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		
		int res = xxs.addTeam(xxt);
		System.out.println("addTeam 受影响数："+res);
		
		Map<String, Object> map = new HashMap<String, Object>();
		if(res>0){
			map.put("success", true);
		}else{
			map.put("success", false);
			map.put("errorMsg", "Add Team fail !!!");
		}		
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);			
		
	}				
	
	
	//更新
	@RequestMapping(value="updateTeam")
	public void updateTeam(Team xxt,HttpServletRequest request,HttpServletResponse response) throws Exception{

		int res = xxs.updateTeam(xxt);
		System.out.println("updateTeam 受影响数："+res);
		Map<String, Object> map=new HashMap<String, Object>();
		if(res>0){
			map.put("success", true);
		}else{
			map.put("success", false);
			map.put("errorMsg", "update Team fail !!!");
		}
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);	
		
	}	
	
	//删除
	@RequestMapping(value="deleteTeam")
	public void deleteTeam(HttpServletRequest request,HttpServletResponse response) throws Exception{

		int noid=Integer.parseInt(request.getParameter("teamId"));
		
		System.out.println("deleteTeam 受影响数："+noid);
		
		int res = xxs.deleteTeam(noid);
		
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
