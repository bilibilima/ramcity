package com.neuedu.action;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;
import com.neuedu.model.*;
import com.neuedu.service.*;

@Controller
@RequestMapping(value = "/food")
public class FoodAction {

	@Autowired
	private FoodService xxs;	
	
	//查找
	@RequestMapping(value = "/findAll")
	public void findAll(HttpServletRequest request,HttpServletResponse response)throws Exception{
		
		
		
		int page=Integer.parseInt(request.getParameter("page"));
		int rows=Integer.parseInt(request.getParameter("rows"));
		
		Map<String, Object> map=new HashMap<String, Object>();
		Map<String, Object> pageMap=new HashMap<String, Object>();
		
		pageMap.put("startPage", (page-1)*rows);
		pageMap.put("endPage", rows);
		
		List<Food> u= xxs.getAll(pageMap);
		int total=xxs.countFood();
		
		map.put("rows", u);
		map.put("total", total);
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);
	}	
	
	//添加
	@RequestMapping(value="addFood")
	public void addFood(Food xxt,MultipartFile file1,HttpServletRequest request,HttpServletResponse response) throws Exception{

		System.out.println("---------------------文件上传开始-----------------------------");
		// 文件的原始名称
		System.out.println("fileName：" + file1.getOriginalFilename());
		// 取得网站程序在服务器磁盘的路径
		String basePath = request.getServletContext().getRealPath("/");

		// 重新使用时间命名文件名，避免出现中文或不雅文件名
		String newFileName = System.currentTimeMillis()
				+ file1.getOriginalFilename().substring(file1.getOriginalFilename().lastIndexOf("."));

		String uploadPath = basePath + "/uploads/" + newFileName;
		System.out.println("newFileName：" + uploadPath);
		
		try {
			File outputFile = new File(uploadPath);
			// 通过MultipartFile的方法直接写文件（注意这个时候）
			xxt.setFoodPhoto("uploads/" + newFileName);
			file1.transferTo(outputFile);
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("上传文件出差！------");
		}
		System.out.println("---------------------文件上传结束-----------------------------");		
		
		
		
		
		int res = xxs.addFood(xxt);
		System.out.println("addFood 受影响数："+res);
		
		Map<String, Object> map = new HashMap<String, Object>();
		if(res>0){
			map.put("success", true);
		}else{
			map.put("success", false);
			map.put("errorMsg", "Add Food fail !!!");
		}		
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);			
		
	}

	//更新

	@RequestMapping(value="updateFood")
	public void updateFood(Food xxt,MultipartFile file1,HttpServletRequest request,HttpServletResponse response) throws Exception{

		
		System.out.println("---------------------文件更新开始-----------------------------");
		// 文件的原始名称
		System.out.println("fileName：" + file1.getOriginalFilename());
		// 取得网站程序在服务器磁盘的路径
		String basePath = request.getServletContext().getRealPath("/");

		// 重新使用时间命名文件名，避免出现中文或不雅文件名
		String newFileName = System.currentTimeMillis()
				+ file1.getOriginalFilename().substring(file1.getOriginalFilename().lastIndexOf("."));

		String uploadPath = basePath + "/uploads/" + newFileName;
		System.out.println("newFileName：" + uploadPath);
		
		try {
			File outputFile = new File(uploadPath);
			// 通过MultipartFile的方法直接写文件（注意这个时候）
			xxt.setFoodPhoto("uploads/" + newFileName);
			file1.transferTo(outputFile);
		} catch (IOException e) {
			System.out.println("更新文件出差！------");
		}
		System.out.println("---------------------文件更新结束-----------------------------");		
		
		int res = xxs.updateFood(xxt);
		System.out.println("updateFood 受影响数："+res);
		Map<String, Object> map=new HashMap<String, Object>();
		if(res>0){
			map.put("success", true);
		}else{
			map.put("success", false);
			map.put("errorMsg", "update Food fail !!!");
		}
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);	
		
	}
	
	//删除
	@RequestMapping(value="deleteFood")
	public void deleteFood(HttpServletRequest request,HttpServletResponse response) throws Exception{

		int noid=Integer.parseInt(request.getParameter("foodId"));
		
		System.out.println("deleteSpots 受影响数："+noid);
		
		int res = xxs.deleteFood(noid);
		
		Map<String, Object> map=new HashMap<String, Object>();
		if(res>0){
			map.put("success", true);
		}else{
			map.put("success", false);
			map.put("errorMsg", "delete Food fail !!!");
		}
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);
		
	}			
	
	//查找
	@RequestMapping(value = "/findFood")
	public String findFood(HttpServletRequest request,HttpServletResponse response)throws Exception{
		
		
		Map<String, Object> map=new HashMap<String, Object>();
		Map<String, Object> pageMap=new HashMap<String, Object>();
		
		pageMap.put("startPage", 0);
		pageMap.put("endPage", 8);
		
		List<Food> u= xxs.getAll(pageMap);
		int total=xxs.countFood();
		
		map.put("rows", u);
		map.put("total", total);
		String str=JSONObject.toJSONString(map);
		response.getWriter().write(str);

		request.setAttribute("foodlist", u);
			
		
		return "/frontpage/food.jsp";
	}		
	
	
	
	
	
}
