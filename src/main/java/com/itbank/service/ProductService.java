package com.itbank.service;

import java.util.HashMap;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.itbank.oneplus.ProductDAO;
import com.itbank.oneplus.ProductDTO;
import com.itbank.oneplus.ProductSummaryDTO;

@Service
public class ProductService {
	
	@Autowired private ProductDAO dao;

	// 카테고리 이동
	public List<ProductDTO> categoryList(@RequestParam HashMap<String, String> idx) {
		List<ProductDTO> catelist = dao.categoryList(idx);
		
		return catelist;
	}

	public ProductDTO selectProductOne(int idx) {
		return dao.selectProductOne(idx);
	}

	//헤더 검색결과 / 추천순,많이팔린순,낮은가격순 등
	public List<ProductDTO> selectSearchList(@RequestParam HashMap<String, String> map) {
		String recome = map.get("recome");
		if(recome == null) recome = "best";
		
		switch(recome) {
		case "best":			map.put("order", "P.idx");				break;
		case "sumbuying":		map.put("order", "P.buycnt");			break;
		case "minprice":		map.put("order", "P.productprice");		break;
		case "maxprice":		map.put("order", "P.productprice desc");break;
		case "lotofreview":		map.put("order", "rcnt desc");			break;
		}
		return dao.selectSearchList(map);
	}
	
	// 카테고리 클릭시 상단에 카테고리명
	public HashMap<String, String> categoryName(HashMap<String, String> idx) {
//		System.out.println(idx);
		
		if(idx.containsKey("productMain_categoryCode") == true) {
//			System.out.println("트류");
			idx.put("columnName", "categoryName");
			idx.put("whereColumn", "productMain_categoryCode");
			idx.put("whereValue", idx.get("productMain_categoryCode"));
		}
		else {	// 중분류만
//			System.out.println("폴쓰");
			idx.put("columnName", "category2Name");
			idx.put("whereColumn", "category2");
			idx.put("whereValue", idx.get("category2"));
		}
		
		String keyword = dao.categoryName(idx);
		String count = "";
		if(idx.get("productMain_categoryCode") == null) { // 중분류 클릭했을 때  
			count = dao.count(idx); 
		}
		else { // 소분류 클릭했을 때 
			count = dao.nullcount(idx);
		}
		
		// 합치기
		HashMap<String, String> two = new HashMap<String, String>();
		two.put("keyword", keyword);
		two.put("count", count);
		
		return two;
	}
	
	public ProductSummaryDTO prodSummaryOne(int idx) {
		return dao.prodSummaryOne(idx);
	}
	
	//  상품 이미지에서 바로 장바구니 담기
	public int imgcart(HashMap<String, String> idx) {
		
		String cnt = idx.get("cnt");
		
		// 장바구니에 해당 상품이 없을 때 
		if( cnt.equals("0") ) {
			return dao.imgcart(idx);
		}
		else { // 있을 때 
			return dao.updatecart(idx);
		}
	}

	// 장바구니 cnt값 가져오기
	public String getcnt(HashMap<String, String> param) {
		//System.out.println("파람은"+param);
		return dao.getcnt(param);
	}

	// 연관검색어
	public List<String> relatedSearch() {
		
		List<String> getword = dao.relatedSearch();
		String word ="";
		
		System.out.println(getword);
		
		for(int i = 0; i < 6; i++) {
			 word = getword.get(i);
			 System.out.println(word);
		}
		System.out.println(getword);
		
		
		return getword;
	}



	
}
