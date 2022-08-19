package com.itbank.restcontroller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

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
	
	//로그인이 되어있으면 insert wishtable에 추가&삭제
	@PostMapping(value="/prodwishList")
	public int wishlist(@RequestBody HashMap<String, String> ob) {
		int current = dao.heartload(ob);
		int row = current == 0 ? dao.wishlist(ob) : dao.deletewishList(ob);
		return current == 1 ? 0 : 1;
	}
	
	@PostMapping(value="/prodwishList/heartload")
	public int heartload(@RequestBody HashMap<String, String> ob) {
		System.out.println(ob);
		return dao.heartload(ob);
		
	}
}
