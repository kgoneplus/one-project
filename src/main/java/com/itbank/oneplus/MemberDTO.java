package com.itbank.oneplus;
//idx 		number 		    primary key,
//name		varchar2(200)	,
//address     varchar2(2000)   ,
//gender      varchar2(50)     ,
//birth		date		    ,
//phonenum	varchar2(30)		    ,
//userid      varchar2(200)    unique,
//userpw		varchar2(200)	,
//email       varchar2(1000)   

import java.sql.Date;

public class MemberDTO {
	private int idx;
	private String name;
	private String address;
	private String gender;
	private Date birth;
	private String phonenum;
	private String userid;
	private String userpw;
	private String email;
	private String addr_number;
	private String addr_juso;
	private String addr_detail;
	private String addr_Reference;
	private String userid_remember;
	
	
	public String getUserid_remember() {
		return userid_remember;
	}
	public void setUserid_remember(String userid_remember) {
		this.userid_remember = userid_remember;
	}
	public String getAddr_number() {
		return addr_number;
	}
	public void setAddr_number(String addr_number) {
		this.addr_number = addr_number;
	}
	public String getAddr_juso() {
		return addr_juso;
	}
	public void setAddr_juso(String addr_juso) {
		this.addr_juso = addr_juso;
	}
	public String getAddr_detail() {
		return addr_detail;
	}
	public void setAddr_detail(String addr_detail) {
		this.addr_detail = addr_detail;
	}
	public String getAddr_Reference() {
		return addr_Reference;
	}
	public void setAddr_Reference(String addr_Reference) {
		this.addr_Reference = addr_Reference;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	
	
}
