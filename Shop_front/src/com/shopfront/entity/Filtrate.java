package com.shopfront.entity;

public class Filtrate {

	private int ID;//筛选表ID
	
	private int ClassID;//商品类型
	
	private int MemberID;//用户ID

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public int getClassID() {
		return ClassID;
	}

	public void setClassID(int classID) {
		ClassID = classID;
	}

	public int getMemberID() {
		return MemberID;
	}

	public void setMemberID(int memberID) {
		MemberID = memberID;
	}
	
}
