package com.shopfront.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.shopfront.dao.personage.IndentMapper;
import com.shopfront.entity.Orderinfo;


@Controller
@RequestMapping("/personage")
public class IndentController {
	
	@Resource
	IndentMapper indent;
	
	@RequestMapping("/indentList")
	public String getList(Model model,Orderinfo orderinfo){
		List<Orderinfo> list = indent.list(orderinfo);
		Integer page = indent.page(orderinfo)==null?0:indent.page(orderinfo);
		if(page>0){			
			Integer size = page%5==0?page/5:page/5+1;
			model.addAttribute("size",size);
		}
		model.addAttribute("list",list);
		model.addAttribute("mem",orderinfo);
		return "Personage/indent";
	}	
	
	@RequestMapping(value="statusupdate",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object statusup(Orderinfo orderinfo){
		System.out.println(orderinfo.getOrderID());
		System.out.println(orderinfo.getIsconfirm());
		Integer stanum = indent.stupdate(orderinfo);
		return JSONArray.toJSONString(stanum);
	}
	
}
