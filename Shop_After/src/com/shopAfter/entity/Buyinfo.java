package com.shopAfter.entity;
/**
 *  ������Ϣ��  ʵ����
 * @author A
 *
 */
public class Buyinfo {

	private String BuyID; // ���ﵥ��
	private int GoodsID; // ��ƷID
	private int Num; // ��Ʒ����
	private String OrderID; // ������
	private double SumPrice; // �ܼ۸�
	private int MemberID; // ��ԱID
	
	// �޲ι���
	public Buyinfo() {
		
	}

	public String getBuyID() {
		return BuyID;
	}

	public void setBuyID(String buyID) {
		BuyID = buyID;
	}

	public int getGoodsID() {
		return GoodsID;
	}

	public void setGoodsID(int goodsID) {
		GoodsID = goodsID;
	}

	public int getNum() {
		return Num;
	}

	public void setNum(int num) {
		Num = num;
	}

	public String getOrderID() {
		return OrderID;
	}

	public void setOrderID(String orderID) {
		OrderID = orderID;
	}

	public double getSumPrice() {
		return SumPrice;
	}

	public void setSumPrice(double sumPrice) {
		SumPrice = sumPrice;
	}

	public int getMemberID() {
		return MemberID;
	}

	public void setMemberID(int memberID) {
		MemberID = memberID;
	}
	
	
	
	
}
