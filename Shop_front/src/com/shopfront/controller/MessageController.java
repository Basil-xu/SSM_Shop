package com.shopfront.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONArray;
import com.shopfront.dao.personage.MessagerMapper;
import com.shopfront.entity.Member;

@Controller
@RequestMapping("/personage")
public class MessageController {

	/**
	 * 页面绑值
	 */
	@Resource
	MessagerMapper message;
	@RequestMapping("/list")
	public String getlist(Map map,int id){
		Member mem = message.list(id);
		map.put("mem", mem);
		return "Personage/Message";
	}
	/**
	 * 修改
	 * @param mufi
	 * @param member
	 * @param request
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	@RequestMapping(value="upd",method=RequestMethod.POST)
	public String getupd(@RequestParam("ff")MultipartFile mufi,Member member,HttpServletRequest request) throws IllegalStateException, IOException{
		if(mufi.getSize()!=0){
			//mufi客户端文件对象
			String path = request.getSession().getServletContext().getRealPath("statics"+File.separator+"uploadfiles");
			//根据时间创建一个32位的字符串
			String newname = UUID.randomUUID().toString();
			//把这个对象传递给给新的对象
			File file = new File(path+"/"+newname+".jpg");
			if(!file.exists()){
				file.mkdirs();
			}
			mufi.transferTo(file);
			//向实体传递对象
			member.setUserLocPath(newname+".jpg");
		}
		
		message.upd(member);
		//获取前台ID
		int id = member.getMemberID();
		//回调
		return "redirect:list?id="+id;
	}
	
	@RequestMapping(value="repetitionName",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object repeName(String name){
		int i = message.repetition(name);
		String num = JSONArray.toJSONString(i);
		return num;
	}
}
