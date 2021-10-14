package com.shopfront.dao.personage;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shopfront.entity.Member;
import com.shopfront.entity.Receiving;
import com.shopfront.entity.Site;

public interface appinfo {
	public List<Site> list(@Param("pid") int pid);
	//添加
	public int add(Receiving receiving);
	// 根据用户id查询收货地址集合
	public List<Receiving> list2(@Param("memberid")int id);
	//根据省市县id查询省市区名称
	String selSite(int id);
	//删除
	int del(int id);
	//查询详细地址
	Receiving selID(int id);
	//修改
	int upd(Receiving r);
	// 修改默认地址
	int updType(Receiving r);
}
