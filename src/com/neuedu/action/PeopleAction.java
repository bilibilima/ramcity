package com.neuedu.action;

import java.io.IOException;
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
@RequestMapping(value = "/people")
public class PeopleAction {

	@Autowired
	private PeopleService xxs;	
	
	//查找
	@RequestMapping(value = "/findAll")
	public void findAll(HttpServletRequest request,HttpServletResponse response)throws Exception{
		
		int page=Integer.parseInt(request.getParameter("page"));
		int rows=Integer.parseInt(request.getParameter("rows"));
		
		Map<String, Object> map=new HashMap<String, Object>();
		Map<String, Object> pageMap=new HashMap<String, Object>();
		
		pageMap.put("startPage", (page-1)*rows);
		pageMap.put("endPage", rows);
		
		List<People> u= xxs.getAll(pageMap);
		int total=xxs.countPeople();
		map.put("rows", u);
		map.put("total", total);
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);
	}	
	
	
	//添加
	@RequestMapping(value="addPeople")
	public void addPeople(People xxt,HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		
		int res = xxs.addPeople(xxt);
		System.out.println("addPeople 受影响数："+res);
		
		Map<String, Object> map = new HashMap<String, Object>();
		if(res>0){
			map.put("success", true);
		}else{
			map.put("success", false);
			map.put("errorMsg", "Add People fail !!!");
		}		
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);			
		
	}			
	
	
	//更新
	@RequestMapping(value="updatePeople")
	public void updatePeople(People xxt,HttpServletRequest request,HttpServletResponse response) throws Exception{

		int res = xxs.updatePeople(xxt);
		System.out.println("updatePeople 受影响数："+res);
		Map<String, Object> map=new HashMap<String, Object>();
		if(res>0){
			map.put("success", true);
		}else{
			map.put("success", false);
			map.put("errorMsg", "update People fail !!!");
		}
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);	
		
	}
	
	
	//删除
	@RequestMapping(value="deletePeople")
	public void deletePeople(HttpServletRequest request,HttpServletResponse response) throws Exception{

		int noid=Integer.parseInt(request.getParameter("peopleId"));
		
		System.out.println("deletePeople 受影响数："+noid);
		
		int res = xxs.deletePeople(noid);
		
		Map<String, Object> map=new HashMap<String, Object>();
		if(res>0){
			map.put("success", true);
		}else{
			map.put("success", false);
			map.put("errorMsg", "delete People fail !!!");
		}
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);
		
	}
	

	//登录
	@RequestMapping("/login")
	public void login(People um,HttpServletRequest request,HttpServletResponse response) throws Exception{
		System.out.println("-------------------登录执行了-------------------------");
		
		
		People ret = xxs.login(um);
		
		if (ret != null){
			request.getSession().setAttribute("LOGIN_USER", ret);
			
			response.sendRedirect(request.getContextPath() + "/backpage/Index.jsp");
		}else{
			response.sendRedirect(request.getContextPath() + "/backpage/Login.jsp");
		
		}
	}	
	
	
	
	
	//退出
	@RequestMapping("/logout")
	public void logout(HttpServletRequest request,HttpServletResponse response) throws IOException{
		 
		System.out.println("-------------------退出执行了-------------------------");
		
		request.getSession().invalidate();
		
		String Path = request.getContextPath() + "/backpage/Login.jsp";
		System.out.println("Path" + Path);
		
		response.sendRedirect(Path);
	}	
	
	
	
	
}
