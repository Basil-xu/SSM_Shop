package producttext;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


import com.shopAfter.dao.user.userMapper;
import com.shopAfter.entity.Member;
import com.shopAfter.entity.Shopcart;

import com.shopAfter.util.SessionHelp;




public class textappinfo {
	
	@Test
	public void getlist() throws IOException{
	
		ApplicationContext context = new ClassPathXmlApplicationContext("SpringMybatisConfig.xml");
		userMapper app = context.getBean(userMapper.class);
		List<Member> list = app.list((3-1)*5, "%"+""+"%");
		for (Member member : list) {
			System.out.println(member.getTrueName());
		}
		
	}
	@Test
	public void del(){
		/*ApplicationContext context = new ClassPathXmlApplicationContext("SpringMybatisConfig.xml");
		productMapper app = context.getBean(productMapper.class);
		int i = app.del();
		System.out.println(i);*/
		
	}
	
	
	
}
