package com.shopAfter.entity;
/**
 *  ��ַ�� ʵ����
 * @author A
 *
 */
public class Site {

	private int siteID; // ��ַID
	private String territoryName; // ʡ��������
	private int territory; // ����ID
	
	//�޲ι���
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
