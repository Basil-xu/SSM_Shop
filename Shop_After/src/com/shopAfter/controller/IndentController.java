package com.shopAfter.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.shopAfter.dao.Indent.IndentMapper;
import com.shopAfter.dao.user.administratorMapper;
import com.shopAfter.entity.Admin;
import com.shopAfter.entity.Commodity;
import com.shopAfter.entity.Orderinfo;

@Controller
@RequestMapping("indent")
public class IndentController {
	
	@Resource
	IndentMapper dao;
	/* ï¿½ï¿½Ñ¯ */
	@RequestMapping(value="/list",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	public String Getlist(Map map,Integer index,String ReceiverName){
		ReceiverName=ReceiverName==null?"":ReceiverName;
		if(index==null){
			index=1;
		}else{
			index = index;
		}
		
		List<Orderinfo> list = dao.list((index-1)*3, "%"+ReceiverName+"%");
		List<Commodity> list1 = dao.select();
		System.out.println("--------------------------------------");
		for (Commodity commodity : list1) {
			System.out.println(commodity.getShipWay());
		}
		
		int pagecount=dao.pagecount("%"+ReceiverName+"%");
		int pagecounts = pagecount%5==0?pagecount/5:pagecount/5+1;
		map.put("list", list);
		map.put("list1", list1);
		map.put("pagecounts",pagecounts);
		map.put("name", ReceiverName);
		return "Indent/Indent";
	}
	
	/*É¾ï¿½ï¿½*/
	@RequestMapping(value="/del",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public String del(String OrderID){
		int i = dao.del(OrderID);
		return JSONArray.toJSONString(i);	
	}
	
	/*ï¿½ï¿½ï¿½ï¿½É¾ï¿½ï¿½*/
	@RequestMapping(value="/dels",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object Getdels(String str){
		System.out.println(str);
		List<String> list = new ArrayList<String>();
		for (String i : str.split(",")) {
			if(i!=null&&i!=""){
				list.add(i);
			}
		}
		int i = dao.dels(list);
		return JSONArray.toJSONString(i);	
	}
	
	/* ï¿½Þ¸ï¿½ */
	@RequestMapping(value="/up",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object Getupdate(Orderinfo orderinfo) throws IllegalStateException, IOException{
		System.out.println("=======½øÈëÐÞ¸Ä");
		System.out.println("=======½øÈëÐÞ¸Ä");
		System.out.println("=======½øÈëÐÞ¸Ä");
		
		int i = dao.update1(orderinfo);
		return JSONArray.toJSONString(i);
	}
	
	
	
}
