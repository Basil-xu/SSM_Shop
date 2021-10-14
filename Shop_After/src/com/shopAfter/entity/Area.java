package com.shopAfter.entity;
/**
 * 送货路程表 实体类
 * @author A
 *
 */

public class Area {
	
	private int AreaID; // 区域ID
	private String AreaKM; // 送货距离
	
	//无参构造
	public Area(){
				
	}
	
	public int getAreaID() {
		return AreaID;
	}

	public void setAreaID(int areaID) {
		AreaID = areaID;
	}

	public String getAreaKM() {
		return AreaKM;
	}

	public void setAreaKM(String areaKM) {
		AreaKM = areaKM;
	}

	

}
