package com.itbank.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.itbank.oneplus.ProductDTO;
import com.itbank.oneplus.ProductSummaryDTO;
import com.itbank.service.ProductService;


@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired private ProductService productService;

	// 헤더 input 검색결과를 보여주는 페이지
	@GetMapping("/search")
	public ModelAndView search (@RequestParam HashMap<String, String> param) {

		ModelAndView mav = new ModelAndView("product/search");
		List<ProductDTO> list = productService.selectSearchList(param);
		mav.addObject("list", list);	
		return mav;		
	}
	
	// 상품상세페이지를 보여주는 페이지
	@GetMapping("/view/{idx}")
	public ModelAndView view(@PathVariable int idx) {
		ModelAndView mav = new ModelAndView("/product/view");
		ProductDTO prodOne = productService.selectProductOne(idx);
		ProductSummaryDTO prodSummary = productService.prodSummaryOne(idx);
		mav.addObject("prodSummary", prodSummary);
		mav.addObject("prodOne", prodOne);	
		return mav;
	}

	// 카테고리 클릭시 보여주는 리스트 페이지 
	@GetMapping("/list")
	public ModelAndView categoryList(@RequestParam HashMap<String, String> idx) {
		ModelAndView mav = new ModelAndView();
		List<ProductDTO> catelist = productService.categoryList(idx);
		mav.addObject("catelist", catelist);

		List<String> keyword = productService.categoryName(idx);
		mav.addObject("keyword", keyword);
		//System.out.println(keyword);
		//System.out.println(catelist);
		return mav;
	}
	
	// summary상품 불러오기(아직미완성)

}

