package com.shopAfter.dao.user;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shopAfter.entity.Site;

public interface siteMapper {

	public List<Site> list(@Param("territory")int territory);
	
}
