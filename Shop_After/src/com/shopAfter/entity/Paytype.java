package com.shopAfter.entity;
/**
 *  付款方式表 实体类
 * @author A
 *
 */
public class Paytype {

	private int PayID; // 付款ID
	private String PayWay; // 付款方式
	
	// 无参构造
	public Paytype() {
	
	}

	public int getPayID() {
		return PayID;
	}

	public void setPayID(int payID) {
		PayID = payID;
	}

	public String getPayWay() {
		return PayWay;
	}

	public void setPayWay(String payWay) {
		PayWay = payWay;
	}
	
	
	
	
}
