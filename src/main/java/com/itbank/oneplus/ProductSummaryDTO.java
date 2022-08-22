package com.itbank.oneplus;

//create table productSummary(
//	productMain_idx      	number          primary key,
//	productName     	    varchar2(100)   not null,
//	productComposition	    varchar2(1000)	not null,
//	productGeneralSize		varchar2(1000)	not null,
//	madeln			        varchar2(100)   ,
//	make			        varchar2(500)   ,
//	MFGorBFF		        varchar2(1000)	default '점포배송상품으로 각 점포별 제조일과 입고일이 상이하여 유통기한이 다릅니다.배송 받으신 상품에 기재된 유통기한 내 섭취를 권장합니다. 해장정보에 대한 문의는 하기 소비자상담 전화번호로 문의해 주시기 바랍니다',
//	productStorage		    varchar2(500)	,
//	ASNumber		        varchar2(100)	default '02-3459-8000',
//	caution			        varchar2(500)	default '상품상세참조'
//);

public class ProductSummaryDTO {
	private int productMain_idx;
	private String productName;
	private String productComposition;
	private String productGeneralSize;
	private String madeln;
	private String make;
	private String MFGorBFF;
	private String productStorage;
	private String ASNumber;
	private String caution;
	
	public int getProductMain_idx() {
		return productMain_idx;
	}
	public void setProductMain_idx(int productMain_idx) {
		this.productMain_idx = productMain_idx;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductComposition() {
		return productComposition;
	}
	public void setProductComposition(String productComposition) {
		this.productComposition = productComposition;
	}
	public String getProductGeneralSize() {
		return productGeneralSize;
	}
	public void setProductGeneralSize(String productGeneralSize) {
		this.productGeneralSize = productGeneralSize;
	}
	public String getMadeln() {
		return madeln;
	}
	public void setMadeln(String madeln) {
		this.madeln = madeln;
	}
	public String getMake() {
		return make;
	}
	public void setMake(String make) {
		this.make = make;
	}
	public String getMFGorBFF() {
		return MFGorBFF;
	}
	public void setMFGorBFF(String mFGorBFF) {
		MFGorBFF = mFGorBFF;
	}
	public String getProductStorage() {
		return productStorage;
	}
	public void setProductStorage(String productStorage) {
		this.productStorage = productStorage;
	}
	public String getASNumber() {
		return ASNumber;
	}
	public void setASNumber(String aSNumber) {
		ASNumber = aSNumber;
	}
	public String getCaution() {
		return caution;
	}
	public void setCaution(String caution) {
		this.caution = caution;
	}
	
	
	
	
	
}
