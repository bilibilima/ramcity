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
@RequestMapping(value = "/message")
public class MessageAction {
	
	@Autowired
	private MessageService xxs;
	
	
	//查找
		@RequestMapping(value = "/findAll")
		public void findAll(HttpServletRequest request,HttpServletResponse response)throws Exception{
			
			int page=Integer.parseInt(request.getParameter("page"));
			int rows=Integer.parseInt(request.getParameter("rows"));
			
			Map<String, Object> map=new HashMap<String, Object>();
			Map<String, Object> pageMap=new HashMap<String, Object>();
			
			pageMap.put("startPage", (page-1)*rows);
			pageMap.put("endPage", rows);
			
			List<Message> u= xxs.getAll(pageMap);
			int total=xxs.countMessage();
			map.put("rows", u);
			map.put("total", total);
			String str=JSONObject.toJSONString(map);
			response.getWriter().write(str);
		}	
		
		//添加
		@RequestMapping(value="addMessage")
		public void addMessage(Message xxt,HttpServletRequest request,HttpServletResponse response) throws Exception{
			
			
			int res = xxs.addMessage(xxt);
			System.out.println("addMessage 受影响数："+res);
			
			Map<String, Object> map = new HashMap<String, Object>();
			if(res>0){
				map.put("success", true);
			}else{
				map.put("success", false);
				map.put("errorMsg", "Add Message fail !!!");
			}		
			String str=JSONObject.toJSONString(map);
			response.getWriter().write(str);			
			
		}				
		
		
		//更新
		@RequestMapping(value="updateMessage")
		public void updateMessage(Message xxt,HttpServletRequest request,HttpServletResponse response) throws Exception{

			int res = xxs.updateMessage(xxt);
			System.out.println("updateMessage 受影响数："+res);
			Map<String, Object> map=new HashMap<String, Object>();
			if(res>0){
				map.put("success", true);
			}else{
				map.put("success", false);
				map.put("errorMsg", "update Message fail !!!");
			}
			String str=JSONObject.toJSONString(map);
			response.getWriter().write(str);	
			
		}	
		
		//删除
		@RequestMapping(value="deleteMessage")
		public void deleteMessage(HttpServletRequest request,HttpServletResponse response) throws Exception{

			int noid=Integer.parseInt(request.getParameter("mid"));
			
			System.out.println("deleteMessage 受影响数："+noid);
			
			int res = xxs.deleteMessage(noid);
			
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
	
	
		//（前台）添加留言
		@RequestMapping(value="addMess")
		public void addMess(Message mess,HttpServletRequest request,HttpServletResponse response) throws Exception{
			System.out.println("-----------------------addMess do---------------------------------");
	
			String tel = request.getParameter("tel");		
			String sex = request.getParameter("sex");
			String name = request.getParameter("name");
			String text = request.getParameter("text");
			String messTime = request.getParameter("messTime");
			String messType = request.getParameter("messType");
			

			mess.setTel(tel);
			mess.setSex(sex);
			mess.setName(name);
			mess.setText(text);
			mess.setMessTime(messTime);
			mess.setMessType(messType);
			

			int res = xxs.addMessage(mess);

			Map<String, Object> map = new HashMap<String, Object>();
			if (res > 0) {
				map.put("success", true);
			} else {
				map.put("success", false);
				map.put("errorMsg", "Save Message fail !!!");
			}
			String str = JSONObject.toJSONString(map);
			response.getWriter().write(str);

			response.sendRedirect(request.getContextPath()+"/frontpage/talk.jsp");
			
		}
	
	
	
	
	
	

}
