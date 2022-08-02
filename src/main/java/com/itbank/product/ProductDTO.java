package com.itbank.product;
//categoryidx	number
//productidx	number
//productname	varchar2(100 byte)
//madeln		varchar2(100 byte)
//productprice	number
//card			varchar2(200 byte)
//delevely		varchar2(100 byte)
//buycnt		number
//maxbuycnt		number


public class ProductDTO {
	private int categoryidx;
	private int productidx;
	private String productname;
	private String madeln;
	private int productprice;
	private String card;
	private String delevely;
	private int buycnt;
	private int maxbuycnt;
	private String productimg;			//이미지 이름 추가
	
}
