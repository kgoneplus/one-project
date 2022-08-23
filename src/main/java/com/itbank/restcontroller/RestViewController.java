package com.itbank.restcontroller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.oneplus.ProductDAO;
import com.itbank.oneplus.ProductDTO;
import com.itbank.oneplus.ProductSummaryDAO;
import com.itbank.oneplus.ProductSummaryDTO;
import com.itbank.oneplus.ReviewDTO;

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

	
	//로그인이 되어있으면 insert wishtable에 추가&삭제
	@PostMapping(value="/prodwishList")
	public int wishlist(@RequestBody HashMap<String, String> ob) {
		int current = dao.heartload(ob);
		int row = current == 0 ? dao.wishlist(ob) : dao.deletewishList(ob);
		return current == 1 ? 0 : 1;
	}
	
	@PostMapping(value="/prodwishList/heartload")
	public int heartload(@RequestBody HashMap<String, String> ob) {
		return dao.heartload(ob);
	}
	
	// 장바구니보내기 
	@PostMapping(value="/product/view/insertcart")
	public int insertproductcart(@RequestBody HashMap<String, String> ob){
		return dao.insertproductcart(ob);
	}
	
	// 상품별 별점 점수 계산
	@PostMapping(value="/product/reviewAvggrade")
	public String prodAvggrade(@RequestBody int productMain_idx){
		String avg = dao.prodAvggrade(productMain_idx);
		if(avg == null) {
			avg = "0.0";
		}
		else {
			if(avg.length() == 1) {
				avg += ".0";
			}
			else {
				avg = avg.substring(0,3);
			}
		}
		return avg;
	}
	
	// 리뷰리스트불러오기
	@GetMapping(value="/product/reviewList")
	public List<ReviewDTO> prodreviewList(@RequestBody HashMap<String, String> ob){
		return dao.prodreviewList(ob);
	}
}
