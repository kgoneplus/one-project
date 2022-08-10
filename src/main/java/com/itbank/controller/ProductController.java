package com.itbank.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itbank.oneplus.ProductDTO;
import com.itbank.service.ProductService;


@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired private ProductService productService;

	// 상품 검색결과를 보여주는 페이지
	@GetMapping("/search")
	public void search() {}
	
	// 상품상세페이지를 보여주는 페이지
	@GetMapping("/view")
	public void view() {}

	// 카테고리 클릭시 보여주는 리스트 페이지 
	@GetMapping("/list")
	public  ProductDTO clickcategory(@RequestParam HashMap<String, String> idx) {
		return productService.selectList(idx);
	}
	
}

