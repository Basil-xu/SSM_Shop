package com.shopfront.util;

import java.text.SimpleDateFormat;
import java.util.Date;



public class temporalInterval {

	public static String temporalIntervals(){
		SimpleDateFormat formatter= new SimpleDateFormat("HH");
		//获取当前时间 
		/*long currentTimeMillis = System.currentTimeMillis();*/
		Date date = new Date();
		
		int datefrom =new Integer(formatter.format(date)) ;
		if(datefrom>=5 && datefrom<9){
			return "早上好";
		}else if(datefrom>=9 && datefrom<12){
			return "上午好";
		}else if(datefrom>=12 && datefrom<14){
			return "中午好";
		}else if(datefrom>=14 && datefrom<18){
			return "下午好";
		}else if(datefrom>=18 && datefrom<24){
			return "晚上好";
		}else{
			return "清晨好";
		}
	}
	
}
