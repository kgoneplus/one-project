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
import com.itbank.oneplus.PruductPaging;
import com.itbank.oneplus.ReviewDTO;
import com.itbank.service.RestViewService;

@RestController
public class RestViewController {

	@Autowired private ProductDAO dao;
	@Autowired private RestViewService restviewService;
	
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
	
	// 찜하기
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
	
	// 상품상세리뷰 점수 계산
	@PostMapping(value="/product/detailReview/{productMain_idx}")
	public HashMap<String, Integer> proddetailReview(@PathVariable int productMain_idx) {
		HashMap<String, Integer> result = new HashMap<String, Integer>();
		int allreviewCnt = dao.allreviewCnt(productMain_idx);
		int verygood = dao.getpState("pState", "아주 좋아요", productMain_idx) * 100 / allreviewCnt;
		int normal = dao.getpState("pState", "보통이에요", productMain_idx) * 100  / allreviewCnt;
		result.put("verygood", verygood);
		result.put("normal", normal);
		result.put("bad", 100 - (verygood + normal));
		
		int same = dao.getpState("pSame", "똑같아요", productMain_idx) * 100 / allreviewCnt;
		int alike = dao.getpState("pSame", "비슷해요", productMain_idx) * 100 / allreviewCnt;
		result.put("same", same);
		result.put("alike", alike);
		result.put("nsame", 100 - (same + alike));
		
		int pgood = dao.getpState("price", "만족해요", productMain_idx) * 100 / allreviewCnt;
		int pnormal = dao.getpState("price", "보통이에요", productMain_idx) * 100 / allreviewCnt;
		result.put("pgood", pgood);
		result.put("pnormal", pnormal);
		result.put("pbad", 100 - (pgood + pnormal));
		result.put("allreviewCnt", allreviewCnt);
		return result;
	}

	// 페이징, 필터링
	@PostMapping(value="/product/prodreviewList")
	public HashMap<String, Object> prodreviewList(@RequestBody HashMap<String, Object> param){
		int reviewCount = restviewService.selectreviewCount(param);
		int page = Integer.parseInt(String.valueOf(param.get("page")));
		PruductPaging paging = new PruductPaging(page, reviewCount);			
		param.put("paging", paging);
		param.put("filter", param.get("filter"));
		HashMap<String, Object> hashMap = new HashMap<String, Object>();
		List<ReviewDTO> list = restviewService.prodreviewList(param);	
		hashMap.put("paging", paging);
		hashMap.put("list", list);
		return hashMap;
	}
	
	// 쿠키
	@PostMapping(value="/product/cookie")
	public String prodCookie(@RequestBody HashMap<String, String> productMain_idx) {
		return dao.prodCookie(productMain_idx);
	}
}
