package com.shopfront.entity;
/***
 * 订单信息 实体类
 * @author song
 *
 */
public class Orderinfo {

	private String OrderID;// 订单ID
	private String OrderDate;// 订单提交日期
	private String GoodsName;// 商品名称
	private double GoodsFee; // 商品价格
	private double TotalPrice; // 商品总费用
	private int Num;//商品数量
	private int ShipID; // 邮寄ID
	private String PayType; //付款方式
	private int MemberID; // 会员ID
	private String ReceiverName; // 接收人名字
	private String ReceiverPhone; // 接收人电话
	private String ReceiverPostCode; // 接收人邮编
	private String ReceiverAddress; // 接收人名地址
	private String ReceiverEmails; // 接收人邮件
	
	private boolean IsPayment; // 是否付款
	private boolean IsPigeonhole; // 是否收货
	private boolean Isconfirm; // 是否确认
	private boolean Evaluation;//是否评价
	
	private int imageID;//图片ID
	private String imageURL;//图片路径
	
	private int index;
	
	private int numsel;
	
	private int inquire;
	
	// 无参构造
	public Orderinfo() {
	
	}

	
	public int getNumsel() {
		return numsel;
	}



	public void setNumsel(int numsel) {
		this.numsel = numsel;
	}



	public int getIndex() {
		return index;
	}



	public void setIndex(int index) {
		int num = index==0?1:index;
		this.index = (num-1)*5;
	}



	public String getOrderID() {
		return OrderID;
	}

	public void setOrderID(String orderID) {
		OrderID = orderID;
	}

	public String getOrderDate() {
		return OrderDate;
	}

	public void setOrderDate(String orderDate) {
		OrderDate = orderDate;
	}

	public double getGoodsFee() {
		return GoodsFee;
	}

	public void setGoodsFee(double goodsFee) {
		GoodsFee = goodsFee;
	}

	public double getTotalPrice() {
		return TotalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		TotalPrice = totalPrice;
	}

	public int getShipID() {
		return ShipID;
	}

	public void setShipID(int shipID) {
		ShipID = shipID;
	}

	public String getPayType() {
		return PayType;
	}

	public void setPayType(String payType) {
		PayType = payType;
	}

	public int getMemberID() {
		return MemberID;
	}

	public void setMemberID(int memberID) {
		MemberID = memberID;
	}

	public String getReceiverName() {
		return ReceiverName;
	}

	public void setReceiverName(String receiverName) {
		ReceiverName = receiverName;
	}

	public String getReceiverPhone() {
		return ReceiverPhone;
	}

	public void setReceiverPhone(String receiverPhone) {
		ReceiverPhone = receiverPhone;
	}

	public boolean getIsPayment() {
		return IsPayment;
	}
	public void setIsPayment(boolean isPayment) {
		IsPayment = isPayment;
	}

	public boolean getIsPigeonhole() {
		return IsPigeonhole;
	}

	
	
	public boolean getIsconfirm() {
		return Isconfirm;
	}


	public void setIsconfirm(boolean isconfirm) {
		Isconfirm = isconfirm;
	}


	public boolean getEvaluation() {
		return Evaluation;
	}


	public void setEvaluation(boolean evaluation) {
		Evaluation = evaluation;
	}


	public void setIsPigeonhole(boolean isPigeonhole) {
		IsPigeonhole = isPigeonhole;
	}

	public String getReceiverPostCode() {
		return ReceiverPostCode;
	}

	public void setReceiverPostCode(String receiverPostCode) {
		ReceiverPostCode = receiverPostCode;
	}

	public String getReceiverAddress() {
		return ReceiverAddress;
	}

	public void setReceiverAddress(String receiverAddress) {
		ReceiverAddress = receiverAddress;
	}

	public String getReceiverEmails() {
		return ReceiverEmails;
	}

	public void setReceiverEmails(String receiverEmails) {
		ReceiverEmails = receiverEmails;
	}

	public int getImageID() {
		return imageID;
	}

	public void setImgaeID(int imageID) {
		this.imageID = imageID;
	}

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}

	public int getNum() {
		return Num;
	}

	public void setNum(int num) {
		Num = num;
	}

	public String getGoodsName() {
		return GoodsName;
	}

	public void setGoodsName(String goodsName) {
		GoodsName = goodsName;
	}

	public void setImageID(int imageID) {
		this.imageID = imageID;
	}


	public int getInquire() {
		return inquire;
	}


	public void setInquire(int inquire) {
		this.inquire = inquire;
	}
	
	

}
