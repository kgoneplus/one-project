package com.itbank.oneplus;

import org.springframework.web.multipart.MultipartFile;

//	member_idx      number          ,
//	idx             number          default ask_seq.nextval primary key,
//	askType         varchar2(100)   check(askType in('배송', '상품', '주문', '결제', '교환/반품/환불', '행사/쿠폰/포인트', '서비스', '기타')),  -- 문의 유형
//	orderProduct    varchar2(200)   not null,
//	title           varchar2(200)   not null,
//	content         varchar2(1000)  not null,
//	img             varchar2(255)

public class AskDTO {
	
	private int member_idx;
	private int idx;
	private String askType;
	private String orderProduct;
	private String title;
	private String content;
	private String img;
	private MultipartFile askFile;
	
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getAskType() {
		return askType;
	}
	public void setAskType(String askType) {
		this.askType = askType;
	}
	public String getOrderProduct() {
		return orderProduct;
	}
	public void setOrderProduct(String orderProduct) {
		this.orderProduct = orderProduct;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public MultipartFile getAskFile() {
		return askFile;
	}
	public void setAskFile(MultipartFile askFile) {
		this.askFile = askFile;
	}
}
