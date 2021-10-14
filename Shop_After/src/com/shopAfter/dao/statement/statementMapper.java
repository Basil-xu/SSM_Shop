package com.shopAfter.dao.statement;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shopAfter.entity.Statement;
import com.shopAfter.entity.TbClass;


public interface statementMapper {

	public List<Statement> StatementList();
	
	public List StatementColumnarList();
	
	public List<TbClass> list2(@Param("CommodityId")String CommodityId); 
	

	public List typeCount(@Param("classID")String classID);
}
