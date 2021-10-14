package com.shopfront.dao.mainpage;

import org.apache.ibatis.annotations.Param;

import com.shopfront.entity.Admin;
import com.shopfront.entity.Member;

public interface LoginMapper {

	public int logincount(@Param("Phonecode")String Phonecode,@Param("Password")String Password);

	public Member loginname(@Param("Phonecode")String Phonecode,@Param("Password")String Password);
	
	public int register(Member member);
	
	public Member EnrollID(Member member);
}
