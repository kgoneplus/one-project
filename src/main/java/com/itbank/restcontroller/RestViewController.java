package com.itbank.restcontroller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.oneplus.ProductDAO;
import com.itbank.oneplus.ProductDTO;
import com.itbank.oneplus.ProductSummaryDAO;
import com.itbank.oneplus.ProductSummaryDTO;

@RestController
public class RestViewController {

	@Autowired private ProductDAO dao;
	@Autowired private ProductSummaryDAO summarydao;
	
	// 카테고리 내 인기상품 불러오기
	@GetMapping(value = "/product/view/cateload/{categorycode}")
	public List<ProductDTO> catehotList(@PathVariable int categorycode){
		return dao.catehotList(categorycode);
	}
	
	// 전체 인기상품 불러오기
	@GetMapping(value = "/product/view/allcateload")
	public List<ProductDTO> allcatehotList(){
		return dao.allcatehotList();
	}
	
	@GetMapping(value="/product/view/summary")
	public List<ProductSummaryDTO> summaryList(){
		return summarydao.summaryList();
	}
	
	//로그인이 되어있으면 insert mypage에 추가
//	@PostMapping()
//	public ModelAndView wishlist(@RequestParam HashMap<String, String> idx) {
//		ModelAndView mav = new ModelAndView();
//		List<ProductDTO> wishlist = dao.wishlist();
//		mav.addObject("wishlist", wishlist);
//		return mav;
//	}
}
