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
import com.itbank.service.ProductService;


@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired private ProductService productService;

	// 검색결과를 보여주는 페이지
	@GetMapping("/search")
	public ModelAndView search (@RequestParam HashMap<String, String> map) {

		ModelAndView mav = new ModelAndView("product/search");
		List<ProductDTO> list = productService.selectSearchList(map);
		//System.out.println(map.get("param"));
		//System.out.println(map.get("recome"));
		mav.addObject("list", list);	
		return mav;		
	}
	
	// 상품상세페이지 이동
	@GetMapping("/view")
	public void view() {}
	
	// 상품상세페이지를 보여주는 페이지
	@GetMapping("/view/{idx}")
	public ModelAndView view(@PathVariable int idx) {
		ModelAndView mav = new ModelAndView("/product/view");
		ProductDTO prodOne = productService.selectProductOne(idx);
		mav.addObject("prodOne", prodOne);	
		return mav;
	}

	// 카테고리에서 리스트 페이지 이동
	@GetMapping("/list")
	public ModelAndView categoryList(@RequestParam HashMap<String, String> idx) {
		ModelAndView mav = new ModelAndView();
		List<ProductDTO> catelist = productService.categoryList(idx);
		mav.addObject("catelist", catelist);

		List<String> keyword = productService.categoryName(idx);
		mav.addObject("keyword", keyword);

		return mav;
	}
}

