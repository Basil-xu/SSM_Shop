package com.shopAfter.util;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SessionHelp {
	static SqlSession session;
	public static SqlSession Getsession() throws IOException{
		//读取配置文件
		Reader reader = Resources.getResourceAsReader("MybatisConfig.xml");
		//生成session 工厂
		SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(reader);
		//3.生成session
		session = sf.openSession();
		return session;
	}
	
	public static void closeSession(String status){
		if(session!=null){
			if(status.equals("commit")){
				session.commit();
			}
			session.close();
		}
	}
	
}
