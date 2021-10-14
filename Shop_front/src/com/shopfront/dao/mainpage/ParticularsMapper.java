package com.shopfront.dao.mainpage;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shopfront.entity.Attrbute;
import com.shopfront.entity.Goodsinfo;
import com.shopfront.entity.Shopcart;

public interface ParticularsMapper {

	public Goodsinfo list(@Param("GoodsID")int id);
	
	public List<Attrbute> listName(@Param("GoodsID")int id);
	
	public List<Attrbute> listValue(@Param("GoodsID")int id);

	public List<Goodsinfo> listimage(@Param("GoodsID")int id);
	
	public int addtrolley(Shopcart shopcart);
	
	public String pricelist(Attrbute attrbute);
	
	public int filtrateint(@Param("ClassID")int ClassID,@Param("MemberID")int MemberID);
}
