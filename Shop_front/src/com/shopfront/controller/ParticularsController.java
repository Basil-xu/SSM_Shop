package com.shopfront.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.shopfront.dao.mainpage.ParticularsMapper;
import com.shopfront.dao.mainpage.goodsinfoSer;
import com.shopfront.entity.Attrbute;
import com.shopfront.entity.Goodsinfo;
import com.shopfront.entity.Shopcart;


@Controller
@RequestMapping("/mainpage")
public class ParticularsController {

	@Resource
	ParticularsMapper aprmapper;
	
	@Resource
	goodsinfoSer goods;
	
	@RequestMapping("/detaillist")
	public String gatlist(Model model,int id,int MemberID){
		Goodsinfo info = aprmapper.list(id);
		aprmapper.filtrateint(info.getClassID2(),MemberID);
		List<Attrbute> listName = aprmapper.listName(id);
		List<Attrbute> listValue = aprmapper.listValue(id);
		List<Goodsinfo> listimage = aprmapper.listimage(id);
		int i = 0;
		int big = 0;
		for (Attrbute attrbute : listName) {
			if(i==0){
				big = attrbute.getAttrSum();
				i++;
				System.out.println(big);
			}
		}
		model.addAttribute("goodsinfo",info);
		model.addAttribute("listName",listName);
		model.addAttribute("listValue",listValue);
		model.addAttribute("listimage",listimage);
		model.addAttribute("num",big);
		return "Mainpage/Particulars";
	}
	
	@RequestMapping(value="addtrolley",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object Addtrolley(Shopcart cart){
		int addi = aprmapper.addtrolley(cart);
		return JSONArray.toJSONString(addi);
	}
	
	@RequestMapping(value="priceShow",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object priceShow(Attrbute attrbute){
		String bute = aprmapper.pricelist(attrbute);
		return JSONArray.toJSONString(bute);
	}
	
	@RequestMapping("Shopcart")
	public String getShopcart(Map map){
		List<Shopcart> list4 = goods.list4();
		map.put("list4",list4);
		return "Mainpage/pay";
	}
}
