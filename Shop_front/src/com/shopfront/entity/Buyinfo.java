package com.shopfront.entity;
/**
 *  购物信息表  实体类
 * @author A
 *
 */
public class Buyinfo {

	private String BuyID; // 购物单号
	private int GoodsID; // 商品ID
	private int Num; // 商品数量
	private String OrderID; // 订单号
	private double SumPrice; // 总价格
	private int MemberID; // 会员ID
	
	// 无参构造
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
