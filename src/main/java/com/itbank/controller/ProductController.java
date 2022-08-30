package com.itbank.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.itbank.oneplus.ProductDTO;
import com.itbank.oneplus.ProductSummaryDTO;
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
		mav.addObject("list", list);	
		
		// 추천검색어
		List<String> searchword = productService.relatedSearch();
		mav.addObject("searchword", searchword);

		return mav;		
	}
	

	// 상품상세페이지 이동
	@GetMapping("/view")
	public void view() {}
	
	// 상품상세페이지를 보여주는 페이지
	@GetMapping("/view/{idx}")
	public ModelAndView view(@PathVariable int idx, HttpServletResponse response, HttpSession session) throws IOException {
		ModelAndView mav = new ModelAndView("/product/view");
		ProductDTO prodOne = productService.selectProductOne(idx);
		ProductSummaryDTO prodSummary = productService.prodSummaryOne(idx);
		mav.addObject("prodSummary", prodSummary);
		mav.addObject("prodOne", prodOne);	
		
		Cookie c = new Cookie("recentProduct", idx + "");
		c.setMaxAge(60 * 60 * 24);
		response.addCookie(c);
		session.setAttribute("JSESSIONID", c.getValue());
//		Cookie c2 = new Cookie("name", URLEncoder.encode("정현지", "UTF-8"));
//		c2.setMaxAge(600);
//		response.addCookie(c2);
		
		return mav;
	}

	// 카테고리에서 리스트 페이지 이동
	@GetMapping("/list")
	public ModelAndView categoryList(@RequestParam HashMap<String, String> idx) {
		ModelAndView mav = new ModelAndView();
		List<ProductDTO> catelist = productService.categoryList(idx);
		mav.addObject("catelist", catelist);

		HashMap<String, String> keyword = productService.categoryName(idx);
		mav.addObject("keyword", keyword);
		
		return mav;
	}

	// 상품 이미지에서 바로 장바구니 담기
	@ResponseBody
	@PostMapping("/view/insert")
	public int imgcart (@RequestBody HashMap<String, String> idx ) {
		return productService.imgcart(idx);
	}


}

