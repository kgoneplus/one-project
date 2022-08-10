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
	private String categoryCode;
	private String productName;
	private String madeln;
	private String productImg;
	private String productImgdetail;
	private String productImgdetailview;
	private int productPrice;
	private int deliveryfee;
	private int buyCnt;
	private int maxbuyCnt;
	private int productSize;
	private int productDiscount;
	//====
	private String productMain_categoryCode;
	private String category2;
	private String categoryName;
	private String category2Name;
	
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
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
	public String getProductImgdetail() {
		return productImgdetail;
	}
	public void setProductImgdetail(String productImgdetail) {
		this.productImgdetail = productImgdetail;
	}
	public String getProductImgdetailview() {
		return productImgdetailview;
	}
	public void setProductImgdetailview(String productImgdetailview) {
		this.productImgdetailview = productImgdetailview;
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
	public int getProductDiscount() {
		return productDiscount;
	}
	public void setProductDiscount(int productDiscount) {
		this.productDiscount = productDiscount;
	}
	public String getProductMain_categoryCode() {
		return productMain_categoryCode;
	}
	public void setProductMain_categoryCode(String productMain_categoryCode) {
		this.productMain_categoryCode = productMain_categoryCode;
	}
	public String getCategory2() {
		return category2;
	}
	public void setCategory2(String category2) {
		this.category2 = category2;
	}
	
	
	


	
}
