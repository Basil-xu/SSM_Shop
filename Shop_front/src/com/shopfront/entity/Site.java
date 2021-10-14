package com.shopfront.entity;
/**
 *  地址表 实体类
 * @author A
 *
 */
public class Site {

	private int siteID; // 地址ID
	private String territoryName; // 省市区名称
	private int territory; // 父级ID
	
	//无参构造
	public Site() {
		
	}

	public int getSiteID() {
		return siteID;
	}

	public void setSiteID(int siteID) {
		this.siteID = siteID;
	}

	public String getTerritoryName() {
		return territoryName;
	}

	public void setTerritoryName(String territoryName) {
		this.territoryName = territoryName;
	}

	public int getTerritory() {
		return territory;
	}

	public void setTerritory(int territory) {
		this.territory = territory;
	}
	
	
	
}
