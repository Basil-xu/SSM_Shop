package com.shopAfter.entity;
/**
 *  ���ʽ�� ʵ����
 * @author A
 *
 */
public class Paytype {

	private int PayID; // ����ID
	private String PayWay; // ���ʽ
	
	// �޲ι���
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
