package com.shopAfter.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shopAfter.dao.AftLoginMapper;

@Controller
public class AftLoginController {

	@Resource
	AftLoginMapper loginMapper;
	
	@RequestMapping(value="getaftlogin",method=RequestMethod.POST)
	public String GetLogin(String username,String password,HttpSession session){
		int i = loginMapper.aftlogincount(username, password);
		if(i>0){
			String adminname = loginMapper.aftloginname(username,password);
			session.setAttribute("name",adminname);
			return "redirect:/product/list?index=1&GoodsName=";
		}
		return "redirect:login.jsp";
	}
	
}
