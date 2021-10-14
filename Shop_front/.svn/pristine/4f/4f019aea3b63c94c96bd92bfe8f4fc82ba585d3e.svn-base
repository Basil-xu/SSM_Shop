package com.shopfront.dao.personage;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shopfront.entity.Member;

public interface MessagerMapper {
	//页面加载绑定值
	public Member list(@Param("id")int id);
	//修改个人信息
	public int upd(Member member);
	//验证用户名是否重复
	public int repetition(@Param("username")String name);
}
