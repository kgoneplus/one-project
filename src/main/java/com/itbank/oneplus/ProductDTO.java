package com.itbank.oneplus;
//idx	number
//productname	varchar2(100 byte)
//madeln	varchar2(100 byte)
// productImg  varchar2
//productprice	number
//deliveryfee	number
//buycnt	number
//maxbuycnt	number
//productdiscount	number
//productsize	number


public class ProductDTO {
	private int idx;
	private String productName;
	private String madeln;
	private String productImg;
	private int productPrice;
	private int deliveryfee;
	private int buyCnt;
	private int maxbuyCnt;
	private int productSize;
	
	public int getMaxbuyCnt() {
		return maxbuyCnt;
	}
	public void setMaxbuyCnt(int maxbuyCnt) {
		this.maxbuyCnt = maxbuyCnt;
	}
	public int getProductSize() {
		return productSize;
	}
	public void setProductSize(int productSize) {
		this.productSize = productSize;
	}
	private int productDiscount;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getMadeln() {
		return madeln;
	}
	public void setMadeln(String madeln) {
		this.madeln = madeln;
	}
	public String getProductImg() {
		return productImg;
	}
	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public int getDeliveryfee() {
		return deliveryfee;
	}
	public void setDeliveryfee(int deliveryfee) {
		this.deliveryfee = deliveryfee;
	}
	public int getBuyCnt() {
		return buyCnt;
	}
	public void setBuyCnt(int buyCnt) {
		this.buyCnt = buyCnt;
	}
	
	public int getProductsize() {
		return productsize;
	}
	public void setProductsize(int productsize) {
		this.productsize = productsize;
	}
	public int getProductDiscount() {
		return productDiscount;
	}
	public void setProductDiscount(int productDiscount) {
		this.productDiscount = productDiscount;
	}
	private int productsize;
}
