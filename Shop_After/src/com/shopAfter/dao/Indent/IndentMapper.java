package com.shopAfter.dao.Indent;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shopAfter.entity.Admin;
import com.shopAfter.entity.Commodity;
import com.shopAfter.entity.Orderinfo;

public interface IndentMapper {

	public List<Orderinfo> list(@Param("index")int index,@Param("ReceiverName")String ReceiverName); 
	
	public int pagecount(@Param("ReceiverName")String ReceiverName);
	
	public int del(@Param("OrderID")String OrderID);
	
	public int dels(List<String> list);
	
	public List<Commodity> select();
	
	public int update1(Orderinfo orderinfo);
	
	
	
}
