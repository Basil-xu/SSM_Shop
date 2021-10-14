package indent;

import java.io.IOException;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.shopAfter.dao.Indent.IndentMapper;
import com.shopAfter.entity.Orderinfo;

public class text {
	
	
	@Test
	public void getlist() throws IOException{
	
		ApplicationContext context = new ClassPathXmlApplicationContext("SpringMybatisConfig.xml");
		IndentMapper app = context.getBean(IndentMapper.class);
		List<Orderinfo> list = app.list((1-1)*5, "%"+""+"%");
		for (Orderinfo orderinfo : list) {
			System.out.println(orderinfo.getGoodsId());
		}
		
	}
	
	
	
}
