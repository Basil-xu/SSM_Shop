package com.shopAfter.dao.product;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shopAfter.entity.Goodsinfo;
import com.shopAfter.entity.Image;
import com.shopAfter.entity.Orderinfo;
import com.shopAfter.entity.TbClass;
/**
 * Product 接口
 * @author A
 *
 */
public interface ProductMapper {

	public List<Goodsinfo> list(@Param("index")int index,@Param("GoodsName")String GoodsName);
	
	public List<TbClass> list2(@Param("CommodityId")String CommodityId); 
	
	public List<Image> listImage(@Param("GoodsID")String GoodsID); 

	public int pagecount(@Param("GoodsName")String GoodsName);
	
	public int del(@Param("id")String id);
	
	public int delImage(@Param("id")String id);
	
	public int delAll(List<String> list);
	
	public int delAllImage(List<String> list);
	
	public int update1(Goodsinfo goodsinfo);
	
	public List<Goodsinfo> typelist(@Param("index")int index,@Param("s1")String s1,@Param("s2")String s2);
	
	public int pagecountType(@Param("s1")String s1,@Param("s2")String s2);
	
	public int add(Goodsinfo goodsinfo);
	
	public int imgAdd(Image image);
	
	public int delImageID(@Param("ImageID")String ImageID);	
	
	public int listImagepage(@Param("GoodsID")String GoodsID);
	
	public int updateImg(@Param("ImageID")String ImageID,@Param("ImageName")String ImageName);
	
	public List<Image> listImagedel(@Param("ImageID")String ImageID); 
	
}
