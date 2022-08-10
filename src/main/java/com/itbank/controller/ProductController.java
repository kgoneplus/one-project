package com.itbank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/product")
public class ProductController {

	// 상품 검색결과를 보여주는 페이지
	@GetMapping("/search")
	public void search() {}
	
	// 상품상세페이지를 보여주는 페이지
	@GetMapping("/view")
	public void view() {}

	// 카테고리 클릭시 보여주는 리스트 페이지 
	@GetMapping("/list")
	public void clickcategory( /*해시맵사용*/) {
		
	}
	

}

