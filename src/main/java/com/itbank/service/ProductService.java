package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.itbank.oneplus.ProductDAO;
import com.itbank.oneplus.ProductDTO;

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

	//헤더 검색결과
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
	public List<String> categoryName(HashMap<String, String> idx) {
		List<String> keyword = dao.categoryName(idx);
		System.out.println("keyword List : " + keyword);
//		if(idx.containsKey("productMain_categoryCode") == true) {
//			keyword.remove("category2Name");
//		}
//		else {
//			keyword.remove("categoryName");
//		}
		return keyword;
	}

	// 추천순 많이팔린순 낮은가격순 ...
	public List<ProductDTO> orderList(HashMap<String, String> param) {
		System.out.println(param);
		
		return null;
	}

	
}
