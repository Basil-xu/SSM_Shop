package com.shopAfter.entity;
/***
 * ��ƷͼƬʵ��
 * @author song
 *
 */
public class Image {

	private int ImageID;//��ƷͼƬID
	private String ImageName;//��ƷͼƬ����
	private String ImageUrl;//��ƷͼƬ��ַ
	public String getGoodsID() {
		return GoodsID;
	}

	public void setGoodsID(String goodsID) {
		GoodsID = goodsID;
	}

	private String GoodsID;//��ƷͼƬ��ַ
	
	//�޲ι���
	public Image() {
	}

	public int getImageID() {
		return ImageID;
	}

	public void setImageID(int imageID) {
		ImageID = imageID;
	}


	public String getImageName() {
		return ImageName;
	}

	public void setImageName(String imageName) {
		ImageName = imageName;
	}

	public String getImageUrl() {
		return ImageUrl;
	}

	public void setImageUrl(String imageUrl) {
		ImageUrl = imageUrl;
	}
	
	
}
