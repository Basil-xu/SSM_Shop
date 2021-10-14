package com.shopfront.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.shopfront.dao.mainpage.LoginMapper;
import com.shopfront.demo.SDKTestSendTemplateSMS;
import com.shopfront.entity.Member;

/**
 * 注册
 * @author song
 *
 */
@Controller
public class EnrollController {

	@Resource()
	LoginMapper loginMapper;
	
	/**
	 * 发送验证码
	 * @param phone 手机号
	 * @return
	 */
	@RequestMapping(value="verifyEnroll",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object Verify(String phone){
		SDKTestSendTemplateSMS skdsend = new SDKTestSendTemplateSMS();
		String i = skdsend.SendVerify(phone);
		System.out.println(i);
		String num = JSONArray.toJSONString(i);
		return num;
	}
	
	/**
	 * 验证成功登录
	 * @param model 向view传参
	 * @param member 接受参数
	 * @param session session
	 * @return
	 */
	@RequestMapping(value="getEnroll",method=RequestMethod.POST)
	public String getEnroll(Member member,HttpSession session){
		int i = loginMapper.register(member);
		if(i>0){
			Member mem = loginMapper.EnrollID(member);
			session.setAttribute("username",mem.getUsername());
			session.setAttribute("memberID",mem.getMemberID());
			return "redirect:/mainList/list?id="+mem.getMemberID();
		}
		return "redirect:login";
	}
	
	
	/**
	 * 判断验证码是否正确 
	 * @param authcodes view传入验证码
	 * @param authcode 
	 * @return
	 */
	@RequestMapping(value="Enrollverify",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object Enrollverify(String verify,String authcode){
		if(verify.equals(authcode)){
			return 1;
		}
		return 0;
	}
}
