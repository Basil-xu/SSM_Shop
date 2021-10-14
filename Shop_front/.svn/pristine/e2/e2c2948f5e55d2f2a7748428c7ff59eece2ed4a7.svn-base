package com.shopfront.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shopfront.dao.personage.UserMapper;
import com.shopfront.entity.Member;
import com.shopfront.util.temporalInterval;

@Controller
@RequestMapping("/personage")
public class UserController {

	@Resource
	UserMapper user;
	
	@RequestMapping("/listuser")
	public String getList(Map map,int id){
		
		Member member = user.list(id);
		String temporalIntervals = temporalInterval.temporalIntervals();
		String phonecode = member.getPhonecode();
		String phoneago = phonecode.substring(0, 3);
		String phonerear = phonecode.substring(phonecode.length()-2,phonecode.length());
		int num = phonecode.length()-5;
		String phone= phoneago;
		for (int i = 0; i < num; i++) {
			phone+="*";
		}
		phone+=phonerear;
		map.put("mem",member);
		map.put("time",temporalIntervals);
		map.put("phone",phone);
		return "Personage/user";
	}
}
