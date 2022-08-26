package com.itbank.oneplus;

import java.sql.Date;

//MEMBER_IDX                NUMBER         
//IDX              NOT NULL NUMBER         
//ORDERDATE                 DATE           
//DELIVERYDATE              VARCHAR2(1000) 
//RECEIVERNAME              VARCHAR2(30)   
//RECEIVERPHONENUM          VARCHAR2(20)   
//ADDRESS                   VARCHAR2(2000) 
//TOTALPRICE                NUMBER         
//DISCOUNTPRICE             NUMBER         
//DELIVERYFEE               NUMBER         
//PURCHASE                  NUMBER   

public class OrdersDTO {
	private int idx;
	private int member_idx;
	private Date orderDate;
	private String deliveryDate;
	private String receiverName;
	private String receiverPhonenum;
	private String address;
	private int totalPrice;
	private int discountPrice;
	private int deliveryFee;
	private int purchase;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	public String getReceiverPhonenum() {
		return receiverPhonenum;
	}
	public void setReceiverPhonenum(String receiverPhonenum) {
		this.receiverPhonenum = receiverPhonenum;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getDiscountPrice() {
		return discountPrice;
	}
	public void setDiscountPrice(int discountPrice) {
		this.discountPrice = discountPrice;
	}
	public int getDeliveryFee() {
		return deliveryFee;
	}
	public void setDeliveryFee(int deliveryFee) {
		this.deliveryFee = deliveryFee;
	}
	public int getPurchase() {
		return purchase;
	}
	public void setPurchase(int purchase) {
		this.purchase = purchase;
	}
	
	
}
