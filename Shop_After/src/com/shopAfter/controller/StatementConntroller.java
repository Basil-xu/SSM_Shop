package com.shopAfter.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.shopAfter.dao.statement.statementMapper;
import com.shopAfter.entity.Statement;

import com.shopAfter.entity.TbClass;

import com.shopAfter.util.ReadExcel;

/**
 * 锟斤拷锟斤拷
 * @author A
 *
 */
@Controller
@RequestMapping("statement")
public class StatementConntroller {
	@Resource
	statementMapper  dao;
	/**
	 * 饼图
	 * @return
	 */
	@RequestMapping(value="/GetStatement",method=RequestMethod.GET,produces="application/json; charset=utf-8")	
	@ResponseBody
	public Object getStatement(String classID){
		List<Statement> list = dao.StatementList();
		List<Statement> list1 = dao.typeCount(classID);
		if(classID.equals("0") || classID==""){
			return JSONArray.toJSONString(list);
		}
		 return JSONArray.toJSONString(list1);
	}
	
	


	
	
	//类型
	@RequestMapping(value="/Typelists",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object GetlistTtype2(String commodityId){
		List<TbClass> lists = dao.list2(commodityId);
		for (TbClass tbClass : lists) {
			System.out.println(tbClass.getClassID());
		}
		return JSONArray.toJSONString(lists);
	}
	@RequestMapping(value="/TypeCount",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object GetListType(String classID){
		List<Statement> list = dao.typeCount(classID);
		for (Statement statement : list) {
			System.out.println(statement.getName()+":"+statement.getNum());
		}
		return JSONArray.toJSON(list);
	}

	
	@RequestMapping(value="readEx",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public String getExcel() throws IOException{
		List<Statement> list = dao.StatementList();
		
		List<String> listtitle = new ArrayList<String>();
		listtitle.add("类型");
		listtitle.add("销量");
		ReadExcel excel = new ReadExcel();
		excel.PoiExcel(listtitle, list);
		return JSONArray.toJSONString("导出成功");
	}

}
