package com.itbank.oneplus;

import java.sql.Date;

//IDX             NOT NULL NUMBER        
//ORDERS_IDX               NUMBER        
//PRODUCTMAIN_IDX          NUMBER        
//PRODUCTCNT               NUMBER        
//PRODUCTPRICE             NUMBER        
//ORDERSTATUS              VARCHAR2(100) 
//CLAIMSTATUS              VARCHAR2(100) 

public class OrdersDetailDTO {
	private int idx;
	private int orders_idx;
	private int productMain_idx;
	private int productCnt;
	private int productPrice;
	private String orderStatus;
	private String claimStatus;
	private String productName;
	private String productImg;
	private Date OrderDate;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getOrders_idx() {
		return orders_idx;
	}
	public void setOrders_idx(int orders_idx) {
		this.orders_idx = orders_idx;
	}
	public int getProductMain_idx() {
		return productMain_idx;
	}
	public void setProductMain_idx(int productMain_idx) {
		this.productMain_idx = productMain_idx;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public String getClaimStatus() {
		return claimStatus;
	}
	public void setClaimStatus(String claimStatus) {
		this.claimStatus = claimStatus;
	}
	public int getProductCnt() {
		return productCnt;
	}
	public void setProductCnt(int productCnt) {
		this.productCnt = productCnt;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductImg() {
		return productImg;
	}
	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}
	public Date getOrderDate() {
		return OrderDate;
	}
	public void setOrderDate(Date orderDate) {
		OrderDate = orderDate;
	}
	
}
