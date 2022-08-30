package com.itbank.oneplus;

public class DeliveryDTO {
	private int dCode;
	private int member_idx;
	private String receiverName;
	private String receiverPhonenum;
	private String address;
	private String addr1;
	private String addr2;
	private String addr3;
	private String addr4;
	private String dInfo1;
	private String isDefault;
	
	public int getdCode() {
		return dCode;
	}
	public void setdCode(int dCode) {
		this.dCode = dCode;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getAddr3() {
		return addr3;
	}
	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}
	public String getdInfo1() {
		return dInfo1;
	}
	public void setdInfo1(String dInfo1) {
		this.dInfo1 = dInfo1;
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
	public String getAddr4() {
		return addr4;
	}
	public void setAddr4(String addr4) {
		this.addr4 = addr4;
	}
	public String getIsDefault() {
		return isDefault;
	}
	public void setIsDefault(String isDefault) {
		this.isDefault = isDefault;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
