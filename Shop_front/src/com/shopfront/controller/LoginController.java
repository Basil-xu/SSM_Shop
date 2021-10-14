package com.shopfront.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.google.gson.JsonArray;
import com.shopfront.dao.mainpage.LoginMapper;
import com.shopfront.demo.SDKTestSendTemplateSMS;
import com.shopfront.entity.Admin;
import com.shopfront.entity.Member;

/**
 * @author Lenovo
 *
 */
@Controller
public class LoginController {

	@Resource
	LoginMapper loginMapper;
	
	
	/**
	 * @param authcodes 用户传入验证码
	 * @param authcode 系统生成验证码
	 * @param Phonecode 手机号
	 * @param Password 密码
	 * @param session session
	 * @return
	 */
	@RequestMapping(value="getlogin",method=RequestMethod.GET)
	public String GetLogin(String authcodes,String authcode,String Phonecode,String Password,HttpSession session){
		int i = loginMapper.logincount(Phonecode, Password);
		if(i>0/*&&authcodes.equals(authcode)*/){
			Member member = loginMapper.loginname(Phonecode,Password);
			session.setAttribute("username",member.getUsername());
			session.setAttribute("memberID",member.getMemberID());
			return "redirect:/mainList/list?id="+member.getMemberID();
		}
		return "redirect:login";
	}
	
	
	/**
	 * 发送验证码
	 * @param phone 手机号
	 * @return
	 */
	@RequestMapping(value="verify",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object Verify(String phone){
		SDKTestSendTemplateSMS skdsend = new SDKTestSendTemplateSMS();
		String i = skdsend.SendVerify(phone);
		System.out.println(i);
		String num = JSONArray.toJSONString(i);
		return num;
	}
	
}
