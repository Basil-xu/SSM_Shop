package com.shopAfter.entity;
/***
 * 鍟嗗搧淇℃伅瀹炰綋
 * @author song
 *
 */
public class Goodsinfo {

	private int GoodsID;//鍟嗗搧ID
	private String GoodsName;//鍟嗗搧鍚嶇О
	private String GoodsIntroduce;
	private String GoodsBrand;//鍟嗗搧鍝佺墝
	private String GoodsUnit;//鍟嗗搧璁℃暟鍗曚綅
	private double GoodsWeight;//鍟嗗搧閲嶉噺
	private double MarketPrice;//鍟嗗搧甯傚満浠锋牸
	private double MemberPrice;//鍟嗗搧浼氬憳浠锋牸
	private int ClassID1;//鍟嗗搧绫诲埆涓�骇鍒嗙被
	private int ClassID2;//鍟嗗搧绫诲埆浜岀骇鍒嗙被
	private String GoodsUrl;//鍟嗗搧鍥剧墖鍦板潃
	private String AddDate;//涓婁紶鏃ユ湡
	private boolean Isrefinement;//鏄惁绮惧搧
	private boolean IsHot;//鏄惁鐑攢
	private boolean IsDiscount;//鏄惁鐗逛环
	private int ImageID; // 鍟嗗搧鍥剧墖ID
	private String type1;
	private String type2;
	private int IsHots;
	private int IsDiscounts;
	
	
	
	public String getGoodsIntroduce() {
		return GoodsIntroduce;
	}

	public void setGoodsIntroduce(String goodsIntroduce) {
		GoodsIntroduce = goodsIntroduce;
	}

	public int getIsHots() {
		return IsHots;
	}

	public void setIsHots(int isHots) {
		IsHots = isHots;
	}

	public int getIsDiscounts() {
		return IsDiscounts;
	}

	public void setIsDiscounts(int isDiscounts) {
		IsDiscounts = isDiscounts;
	}

	public String getType1() {
		return type1;
	}

	public void setType1(String type1) {
		this.type1 = type1;
	}

	public String getType2() {
		return type2;
	}

	public void setType2(String type2) {
		this.type2 = type2;
	}

	public int getImageID() {
		return ImageID;
	}

	public void setImageID(int imageID) {
		ImageID = imageID;
	}

	public Goodsinfo() {
		
	}

	public int getGoodsID() {
		return GoodsID;
	}

	public void setGoodsID(int goodsID) {
		GoodsID = goodsID;
	}

	public String getGoodsName() {
		return GoodsName;
	}

	public void setGoodsName(String goodsName) {
		GoodsName = goodsName;
	}


	public String getGoodsBrand() {
		return GoodsBrand;
	}

	public void setGoodsBrand(String goodsBrand) {
		GoodsBrand = goodsBrand;
	}

	public String getGoodsUnit() {
		return GoodsUnit;
	}

	public void setGoodsUnit(String goodsUnit) {
		GoodsUnit = goodsUnit;
	}

	public double getGoodsWeight() {
		return GoodsWeight;
	}

	public void setGoodsWeight(double goodsWeight) {
		GoodsWeight = goodsWeight;
	}

	public double getMarketPrice() {
		return MarketPrice;
	}

	public void setMarketPrice(double marketPrice) {
		MarketPrice = marketPrice;
	}

	public double getMemberPrice() {
		return MemberPrice;
	}

	public void setMemberPrice(double memberPrice) {
		MemberPrice = memberPrice;
	}

	public int getClassID1() {
		return ClassID1;
	}

	public void setClassID1(int classID1) {
		ClassID1 = classID1;
	}

	public int getClassID2() {
		return ClassID2;
	}

	public void setClassID2(int classID2) {
		ClassID2 = classID2;
	}

	public String getGoodsUrl() {
		return GoodsUrl;
	}

	public void setGoodsUrl(String goodsUrl) {
		GoodsUrl = goodsUrl;
	}

	public String getAddDate() {
		return AddDate;
	}

	public void setAddDate(String addDate) {
		AddDate = addDate;
	}

	public boolean isIsrefinement() {
		return Isrefinement;
	}

	public void setIsrefinement(boolean isrefinement) {
		Isrefinement = isrefinement;
	}

	public boolean isIsHot() {
		return IsHot;
	}

	public void setIsHot(boolean isHot) {
		IsHot = isHot;
	}

	public boolean isIsDiscount() {
		return IsDiscount;
	}

	public void setIsDiscount(boolean isDiscount) {
		IsDiscount = isDiscount;
	}
	
}
