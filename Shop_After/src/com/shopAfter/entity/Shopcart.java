package com.shopAfter.entity;
/**
 * ���ﳵ��Ϣ�� ʵ����
 * @author A
 *
 */
public class Shopcart {

	private int CartID; // �ʼ�ID
	private String CartName; // �ʼķ�ʽ
	private int Num; // ��������
	private double MemberPrice; // ��Ա�۸�
	private double MarketPrice; // �г��۸�
	private int MemberID; // ��ԱID
	private double GoodsWeight; // ��Ʒ����
	
	//�޲ι���
	public Shopcart(){
		
	}

	public int getCartID() {
		return CartID;
	}

	public void setCartID(int cartID) {
		CartID = cartID;
	}

	public String getCartName() {
		return CartName;
	}

	public void setCartName(String cartName) {
		CartName = cartName;
	}

	public int getNum() {
		return Num;
	}

	public void setNum(int num) {
		Num = num;
	}

	public double getMemberPrice() {
		return MemberPrice;
	}

	public void setMemberPrice(double memberPrice) {
		MemberPrice = memberPrice;
	}

	public double getMarketPrice() {
		return MarketPrice;
	}

	public void setMarketPrice(double marketPrice) {
		MarketPrice = marketPrice;
	}

	public int getMemberID() {
		return MemberID;
	}

	public void setMemberID(int memberID) {
		MemberID = memberID;
	}

	public double getGoodsWeight() {
		return GoodsWeight;
	}

	public void setGoodsWeight(double goodsWeight) {
		GoodsWeight = goodsWeight;
	}
	
	
	
	
	
	
}
