package com.shopAfter.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.shopAfter.dao.user.administratorMapper;
import com.shopAfter.entity.Admin;
import com.shopAfter.entity.Member;

/**
 *  锟斤拷锟斤拷员 锟斤拷锟斤拷锟斤拷
 * @author A
 *
 */
@Controller
@RequestMapping("/admin")
public class AdministratorController {

	@Resource
	administratorMapper dao;
	/* 锟斤拷询 */
	@RequestMapping(value="/list",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	public String Getlist(Map map,Integer index,String username){
		username=username==null?"":username;
		if(index==null){
			index=1;
		}else{
			index=index;
		}
		List<Admin> list = dao.list((index-1)*5, "%"+username+"%");
		for (Admin admin : list) {
			System.out.println(admin.getAdminid());
		}
		int pagecount=dao.pagecount("%"+username+"%");
		int pagecounts = pagecount%5==0?pagecount/5:pagecount/5+1;
		map.put("list", list);
		map.put("pagecounts",pagecounts);
		map.put("names", username);
		return "User/Administrator";
	}
	
	/*删锟斤拷*/
	@RequestMapping(value="/del",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public String del(int adminid){
		int i = dao.del(adminid);
		return JSONArray.toJSONString(i);
	}
	
	/*锟斤拷锟斤拷删锟斤拷*/
	@RequestMapping(value="/dels",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object Getdels(String str){
		System.out.println(str);
		List<Integer> list = new ArrayList<Integer>();
		for (String i : str.split(",")) {
			if(i!=null&&i!=""){
				list.add(new Integer(i));
			}
		}
		int i = dao.dels(list);
		return JSONArray.toJSONString(i);	
	}
	
	/* 锟斤拷锟�*/
	@RequestMapping(value="/add",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public String del(Admin admin){
		int i = dao.insert(admin);
		return JSONArray.toJSONString(i);	
	}
	
	/* 锟睫革拷 */
	@RequestMapping(value="/up",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object Getupdate(Admin admin) throws IllegalStateException, IOException{
		System.out.println("锟斤拷锟斤拷锟�");
		int update = dao.update1(admin);
		return JSONArray.toJSONString(update);
	}
	
}
