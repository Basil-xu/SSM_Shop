package com.shopAfter.dao;

import org.apache.ibatis.annotations.Param;

public interface AftLoginMapper {

	public int aftlogincount(@Param("username")String username,@Param("password")String password);

	public String aftloginname(@Param("username")String username,@Param("password")String password);
}
