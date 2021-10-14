package com.shopfront.util;

import java.text.SimpleDateFormat;
import java.util.Date;



public class temporalInterval {

	public static String temporalIntervals(){
		SimpleDateFormat formatter= new SimpleDateFormat("HH");
		//鑾峰彇褰撳墠鏃堕棿 
		/*long currentTimeMillis = System.currentTimeMillis();*/
		Date date = new Date();
		
		int datefrom =new Integer(formatter.format(date)) ;
		if(datefrom>=5 && datefrom<9){
			return "鏃╀笂濂�";
		}else if(datefrom>=9 && datefrom<12){
			return "涓婂崍濂�";
		}else if(datefrom>=12 && datefrom<14){
			return "涓崍濂�";
		}else if(datefrom>=14 && datefrom<18){
			return "涓嬪崍濂�";
		}else if(datefrom>=18 && datefrom<24){
			return "鏅氫笂濂�";
		}else{
			return "娓呮櫒濂�";
		}
	}
	
}
