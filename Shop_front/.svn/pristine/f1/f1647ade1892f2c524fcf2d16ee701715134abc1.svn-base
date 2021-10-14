package com.shopfront.demo;

import java.util.HashMap;
import java.util.Set;

import com.shopfront.util.CCPRestSDK;
import com.shopfront.util.CCPRestSDK.BodyType;

public class SDKTestSendTemplateSMS {

	/**
	 * @param args
	 */
	public String SendVerify(String phone){
		HashMap<String, Object> result = null;
		String getCode = getCode();
		CCPRestSDK restAPI = new CCPRestSDK();
		restAPI.init("app.cloopen.com", "8883");// 初始化服务器地址和端口，格式如下，服务器地址不需要写https://
		restAPI.setAccount("8a216da87ba59937017bdc8f5feb0b15", "87c4fd49b1c64d7b9fe6e778cb4f5a9f");// 初始化主帐号和主帐号TOKEN
		restAPI.setAppId("8a216da87ba59937017bdc8f61110b1b");// 初始化应用ID
		result = restAPI.sendTemplateSMS(phone,"1" ,new String[]{getCode,"5"});
		
		System.out.println("SDKTestSendTemplateSMS result=" + result);
		
		if("000000".equals(result.get("statusCode"))){
			//正常返回输出data包体信息（map）
			HashMap<String,Object> data = (HashMap<String, Object>) result.get("data");
			Set<String> keySet = data.keySet();
			for(String key:keySet){
				Object object = data.get(key);
				System.out.println(key +" = "+object);
				return getCode;
			}
		}else{
			//异常返回输出错误码和错误信息
			System.out.println("错误码=" + result.get("statusCode") +" 错误信息= "+result.get("statusMsg"));
			return getCode;
		}
		return getCode;
	}
	
	public static String getCode(){
		int mobile_code = (int)((Math.random()*9+1)*100000);		//用随机数当验证码
		return String.valueOf(mobile_code);
	}

}
