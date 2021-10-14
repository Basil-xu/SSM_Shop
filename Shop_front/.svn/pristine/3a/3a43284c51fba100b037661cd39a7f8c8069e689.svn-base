package com.shopfront.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.shopfront.dao.personage.appinfo;
import com.shopfront.entity.Member;
import com.shopfront.entity.Receiving;
import com.shopfront.entity.Site;

@Controller
@RequestMapping("/personage")
public class AppinfoController {
	
	@Resource
	appinfo dao;
	
	@RequestMapping(value="/json",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object getlist(int pid){
		List<Site> list = dao.list(pid);
		return JSONArray.toJSONString(list);
	}
	// 添加以及修改
	@RequestMapping(value="/add",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object add(Receiving m){
		int result = 0;
		// 如果是添加那么id肯定是0
		if(m.getId()==0){
			result = dao.add(m);
		// 修改
		}else{
			result = dao.upd(m);
		}
		return result;
	}
	
	// 用户收货地址，根据用户id进行查询，一个用户对应多个收货地址
	@RequestMapping("/list2")
	public String list2(int memberid,Map map){
		// 获取到数据
		List<Receiving> list2 = dao.list2(memberid);
		List<Receiving> list = new ArrayList<Receiving>();
		// 因为要把省,市,县,详细地址拼接成一个字符串,所以循环一下
		for (Receiving r : list2) {
			// 根据当然地址的省市县id查询省市区名称
			String a1 = dao.selSite(r.getProvince());//省
			String a2 = dao.selSite(r.getCity());//市
			String a3 = dao.selSite(r.getDistrict());//县
			//然后拼接成一个字符串
			r.setStr(a1+a2+a3+r.getAddress());
			list.add(r);
		}
		// 集合数据
		map.put("Receiving", list);
		// 用户id
		map.put("memberid", memberid);
		return "Personage/address";
	}
	// 删除
	@RequestMapping(value="/del",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object del(int id){
		int result = dao.del(id);
		return result;
	}
	// 查询详细的收货地址
	@RequestMapping("/selId")
	@ResponseBody
	public Object selId(int id){
		Receiving r = dao.selID(id);
		// 查询省，市，县
		List<Site> list1 = dao.list(0);
		List<Site> list2 = dao.list(r.getProvince());
		List<Site> list3 = dao.list(r.getCity());

		List<Object> list = new ArrayList<Object>();
		list.add(r);
		list.add(list1);
		list.add(list2);
		list.add(list3);
		return list;
	}

	// 修改默认地址
	@RequestMapping("/updType")
	@ResponseBody
	public Object updType(Receiving r){
		
		// 修改之前把当前用户的地址全部设为不是默认地址
		dao.updType(r);
		System.out.println(r.getCity());
		// 然后根据地址id进行修改默认地址
		int result = dao.upd(r);
		return result;
	}
	
}
