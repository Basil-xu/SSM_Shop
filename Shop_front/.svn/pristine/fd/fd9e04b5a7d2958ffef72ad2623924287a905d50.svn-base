package com.shopfront.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.apache.log4j.chainsaw.Main;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;






import com.alibaba.fastjson.JSONArray;
import com.shopfront.dao.mainpage.goodsinfoSer;
import com.shopfront.entity.Attrbute;
import com.shopfront.entity.Goodsinfo;
import com.shopfront.entity.OfGoodsinfo;
import com.shopfront.entity.Shopcart;
import com.shopfront.entity.slideshow;


@Controller
@RequestMapping("mainList")
public class goodSer {
	
	private static final String String = null;
	@Resource
	goodsinfoSer dao;
	private String shopcartID;
	
	@RequestMapping("/list")
	public String update(Map map,int id){
		List<Goodsinfo> list=dao.list(id);
		
		List<Goodsinfo> list1=dao.list1();
		
		List<Goodsinfo> listTop = dao.listTop();
		
		List<Goodsinfo> Aidalist=dao.Aidalist();
		
		map.put("Aidalist", Aidalist);
		
		if(list.size()>0){
			map.put("list", list);
		}else{
			map.put("list", listTop);
		}
		
		map.put("list1", list1);
		return "Mainpage/MainList";
	}
	
	
	

	
	@RequestMapping("cart")
	public String list2(Map map,Integer id){
		List<Shopcart> list2=dao.list2(id);
		map.put("list2", list2);
		return "Mainpage/cart";
	}
	
	
	
	
	@RequestMapping("/dexl")
	public String del(Integer shopcartID,int id){

		 dao.del(shopcartID);
		/*return "redirect:/Shop_front/mainList/cart";*/
		return "redirect:/mainList/cart?id="+id;
		
	}
	
	 @RequestMapping("pay")
	 public String pay(Map map){
		 List<Shopcart> list4=dao.list4();
		 return "Mainpage/pay";
	 }
	
	
	
/*//	public String list(Map map){
//		List<Shopcart>list2 =dao.list2();
//		map.put("list2", list2);
//		
//		return "Mainpage/MainList";
//		}
*/	
	//����
	@RequestMapping("search")
	public String searchName(Map map,String GoodsName){
		GoodsName=GoodsName==null?"":GoodsName;
		List<Goodsinfo> searchName=dao.searchName("%"+GoodsName+"");
		map.put("searchName", searchName);
		return "";
		
	}
	@RequestMapping("/detaillist")
	public String gatlist(Model model,Integer MemberID){
		Goodsinfo info = (Goodsinfo) dao.list(MemberID);
		model.addAttribute("goodsinfo",info);
		return "Mainpage/Particulars";
	}
	
}
