package com.shopfront.entity;
/**
 * 会员表 实体类
 * @author A
 *
 */

public class Member {

	private int MemberID; // 会员ID
	private String Sex; // 会员性别
	private String Password; // 会员密码
	private String username;
	private String TrueName; // 会员真实名字
	private String Phonecode; // 电话号码
	private String Emails; // 邮箱 Email
	private int Province; // 所在省份
	private int City; // 所在城市
	private int District; // 所在区
	private String Address; // 地址
	private String PostCode; // 邮编号码
	private String LoadDate; // 上次登录时间
	private String userLocPath;
	private String obligation;
	private String pending;
	private String toReceive;
	
	// 无参构造
	public Member() {
	}

	
	
	public String getToReceive() {
		return toReceive;
	}



	public void setToReceive(String toReceive) {
		this.toReceive = toReceive;
	}



	public String getPending() {
		return pending;
	}



	public void setPending(String pending) {
		this.pending = pending;
	}



	public String getObligation() {
		return obligation;
	}



	public void setObligation(String obligation) {
		this.obligation = obligation;
	}



	public int getMemberID() {
		return MemberID;
	}

	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserLocPath() {
		return userLocPath;
	}

	public void setUserLocPath(String userLocPath) {
		this.userLocPath = userLocPath;
	}

	public void setMemberID(int memberID) {
		MemberID = memberID;
	}

	public String getSex() {
		return Sex;
	}

	public void setSex(String sex) {
		Sex = sex;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getTrueName() {
		return TrueName;
	}

	public void setTrueName(String trueName) {
		TrueName = trueName;
	}

	public String getPhonecode() {
		return Phonecode;
	}

	public void setPhonecode(String phonecode) {
		Phonecode = phonecode;
	}

	public String getEmails() {
		return Emails;
	}

	public void setEmails(String emails) {
		Emails = emails;
	}

	public int getProvince() {
		return Province;
	}

	public void setProvince(int province) {
		Province = province;
	}

	public int getCity() {
		return City;
	}

	public void setCity(int city) {
		City = city;
	}

	public int getDistrict() {
		return District;
	}

	public void setDistrict(int district) {
		District = district;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getPostCode() {
		return PostCode;
	}

	public void setPostCode(String postCode) {
		PostCode = postCode;
	}

	public String getLoadDate() {
		return LoadDate;
	}

	public void setLoadDate(String loadDate) {
		LoadDate = loadDate;
	}
	
}
