package com.shopfront.dao.mainpage;

import java.util.List;

import org.apache.ibatis.annotations.Param;




import com.shopfront.entity.Goodsinfo;
import com.shopfront.entity.Shopcart;
import com.shopfront.entity.slideshow;


public interface goodsinfoSer {
		//涓婚〉
		public List<Goodsinfo> list(@Param("MemberID")int id);
		public List<Goodsinfo> list1();
		public List<Goodsinfo> listTop();
		
		
		//鍒犻櫎
		public int del(@Param("shopcartID") Integer shopcartID);
		
		
		//缁撶畻
		public List<Shopcart> list4();
		
		//璐墿杞�
		public List<Shopcart> list2(@Param("MemberID")int MemberID);
		
		//搜索
		public List<Goodsinfo> searchName(@Param("GoodsName") String GoodsName);
		
		//轮播图
		public Goodsinfo list1(@Param("GoodsID")int id);
			
		//主页面
		public List<Goodsinfo> Aidalist();
		
}
