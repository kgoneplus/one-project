package com.itbank.integration_member;

import java.sql.Date;

//idx 		number 		    default member_seq.nextval primary key,
//name		varchar(200)	not null,
//birth		date		    not null,
//ponenum		number		    not null,	
//adress      varchar(500)    ,
//email       varchar(200)   
public class IntegrationMemberDTO {
	
	private int idx;
	private String name;
	private Date birth;
	private int ponenum;
	private String adress;
	private String email ;
	
	
	int getIdx() {
		return idx;
	}
	void setIdx(int idx) {
		this.idx = idx;
	}
	String getName() {
		return name;
	}
	void setName(String name) {
		this.name = name;
	}
	Date getBirth() {
		return birth;
	}
	void setBirth(Date birth) {
		this.birth = birth;
	}
	int getPonenum() {
		return ponenum;
	}
	void setPonenum(int ponenum) {
		this.ponenum = ponenum;
	}
	String getAdress() {
		return adress;
	}
	void setAdress(String adress) {
		this.adress = adress;
	}
	String getEmail() {
		return email;
	}
	void setEmail(String email) {
		this.email = email;
	}
}
