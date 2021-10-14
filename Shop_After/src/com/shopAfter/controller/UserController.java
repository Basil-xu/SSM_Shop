package com.shopAfter.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.shopAfter.dao.user.siteMapper;
import com.shopAfter.dao.user.userMapper;
import com.shopAfter.entity.Member;
import com.shopAfter.entity.Site;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	userMapper dao;
	

	@RequestMapping("/list")
	public String Getlist(Map map,Integer index,String TrueName){
		TrueName=TrueName==null?"":TrueName;
	if(index==null){
		index=1;
	}else{
		index=index;
	}
		List<Member> list = dao.list((index-1)*5, "%"+TrueName+"%");
		for (Member member : list) {
			System.out.println(member.getEmails());
		}
		int pagecount=dao.pagecount("%"+TrueName+"%");
		int pagecounts = pagecount%5==0?pagecount/5:pagecount/5+1;
		map.put("list", list);
		map.put("pagecounts",pagecounts);
		map.put("name", TrueName);
		return "User/User";
	}
	
		/*@RequestMapping(value="/json",method=RequestMethod.GET,produces="application/json; charset=utf-8")
		@ResponseBody
		public String Getlist(HttpServletRequest request,int index,String TrueName){
			TrueName=TrueName==null?"":TrueName;
			List<Member> list = dao.list((index-1)*5, "%"+TrueName+"%");
			int pagecount=dao.pagecount("%"+TrueName+"%");
			int pagecounts = pagecount%5==0?pagecount/5:pagecount/5+1;
			request.setAttribute("pagecounts",pagecounts);
			return JSONArray.toJSONString(list);
		}*/
	
	
	
	/*删除*/
	@RequestMapping(value="/del",method=RequestMethod.POST,produces="application/json; charset=utf-8")	
	@ResponseBody
	public String del(int MemberID){
		int i = dao.del(MemberID);
		return JSONArray.toJSONString(i);
	}
	
	/*添加*/
	@RequestMapping(value="/add",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public String add(Member member) throws IllegalStateException, IOException{
		System.out.println("----------------------------------");
		System.out.println(member.getUsername()+","+member.getSex());
		int i = dao.insert(member);
		return JSONArray.toJSONString(i);
	}
	
	/*修改*/
	@RequestMapping(value="/up",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object Getupdate(Member member) throws IllegalStateException, IOException{
		System.out.println("进入后");
		int update = dao.update1(member);
		return JSONArray.toJSONString(update);
	}
	
	/*批量删除*/
	@RequestMapping(value="/dels",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public String Getdel(String d){
		System.out.println(d);
		List<Integer> list = new ArrayList<Integer>();
		for (String i : d.split(",")) {
			if(i!=null&&i!=""){
				list.add(new Integer(i));
			}
		}
		int i = dao.delall(list);
		return JSONArray.toJSONString(i);	
	}
	
	@Resource
	siteMapper dao1;
	/*三级联动*/
	@RequestMapping(value="/json",method=RequestMethod.GET,produces="application/json; charset=utf-8")
    @ResponseBody
    public Object getlist(int territory)
	{
		List<Site> list = dao1.list(territory);
		System.out.println(list.size());
		return JSONArray.toJSONString(list);
	}
	
}
