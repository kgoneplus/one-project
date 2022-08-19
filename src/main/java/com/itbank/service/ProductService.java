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

	// 카테고리 클릭시 이동
	public List<ProductDTO> categoryList(@RequestParam HashMap<String, String> idx) {
		List<ProductDTO> catelist = dao.categoryList(idx);
		
//		System.out.println("서비스이거눙" + catelist);
		return catelist;
	}

	//헤더 input 검색결과를 보여주는 페이지
	public List<ProductDTO> selectSearchList(@RequestParam HashMap<String, String> param) {

		return dao.selectSearchList(param);
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



	
	
}
