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
	private int number;
	private String name;
	private String address;
	private String gender;
	private Date birth;
	private String phonenum;
	private String userid;
	private String email;
	
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
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
	
	
}
