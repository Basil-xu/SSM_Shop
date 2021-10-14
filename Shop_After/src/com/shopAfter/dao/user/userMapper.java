package com.shopAfter.dao.user;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shopAfter.entity.Member;

public interface userMapper {

	public List<Member> list(@Param("index")int index,@Param("TrueName")String TrueName);
	
	public int pagecount(@Param("TrueName")String TrueName);
	
	public int del(@Param("MemberID")int MemberID);
	
	public int delall(List<Integer> list);
	
	public int insert(Member member);
	
	public int update1(Member member);
	
	public Member Getlist(@Param("MemberID")int MemberID);
}
