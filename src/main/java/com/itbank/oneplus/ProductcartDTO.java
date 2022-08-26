package com.itbank.oneplus;

import java.io.Serializable;

public class ProductcartDTO implements Serializable{
	private static final long serialVersionUID = -247666390070460631L;
	
	private int member_idx;
	private int productMain_idx;
	private String productName;
	private int productPrice;
	private String productImg;
	private int productDiscount;
	private int cnt;
	private int maxbuyCnt;

	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public int getProductMain_idx() {
		return productMain_idx;
	}
	public void setProductMain_idx(int productMain_idx) {
		this.productMain_idx = productMain_idx;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getProductImg() {
		return productImg;
	}
	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}
	public int getMaxbuyCnt() {
		return maxbuyCnt;
	}
	public void setMaxbuyCnt(int maxbuyCnt) {
		this.maxbuyCnt = maxbuyCnt;
	}
	public int getProductDiscount() {
		return productDiscount;
	}
	public void setProductDiscount(int productDiscount) {
		this.productDiscount = productDiscount;
	}
	
}
