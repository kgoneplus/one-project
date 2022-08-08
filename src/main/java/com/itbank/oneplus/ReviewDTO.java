package com.itbank.oneplus;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

//	member_idx          number          ,
//	productMain_idx     number          ,
//	idx                 number          default review_seq.nextval primary key,
//	pState              varchar2(200)   check(pState in('아주 좋아요', '보통이에요', '별로에요')),
//	pSame               varchar2(100)   check(pSame in('똑같아요', '비슷해요', '달라요')),
//	price               varchar2(100)   check(price in('만족해요', '보통이에요', '별로에요')),
//	content             varchar2(1000)  not null,
//	makeDate            date            default sysdate,
//	Grade               number          not null,
//	img                 varchar2(255)

public class ReviewDTO {
	private int member_idx;
	private int productMain_idx;
	private int idx;
	private String pState;
	private String pSame;
	private String price;
	private String content;
	private Date makeDate;
	private int Grade;
	private String img;
	private MultipartFile luloadFile;
	
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
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getpState() {
		return pState;
	}
	public void setpState(String pState) {
		this.pState = pState;
	}
	public String getpSame() {
		return pSame;
	}
	public void setpSame(String pSame) {
		this.pSame = pSame;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getMakeDate() {
		return makeDate;
	}
	public void setMakeDate(Date makeDate) {
		this.makeDate = makeDate;
	}
	public int getGrade() {
		return Grade;
	}
	public void setGrade(int grade) {
		Grade = grade;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public MultipartFile getLuloadFile() {
		return luloadFile;
	}
	public void setLuloadFile(MultipartFile luloadFile) {
		this.luloadFile = luloadFile;
	}
}
