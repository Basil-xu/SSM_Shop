package com.shopfront.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shopfront.dao.personage.PasswordMapper;
import com.shopfront.entity.Member;

@Controller
@RequestMapping("/personage")
public class PasswordController {

	@Resource
	PasswordMapper password;
	
	@RequestMapping("/listPassword")
	public String getlist(int id,Model model){
		Member member = password.pass(id);
		model.addAttribute("mem", member);
		return "Personage/update_password";
	}
	
	@RequestMapping(value="updatepwd",method=RequestMethod.POST)
	public String updpwd(Member member,Model model){
		int i = password.changepwd(member);
		model.addAttribute("mem", member);
		return "Personage/update_password";
	}
}
