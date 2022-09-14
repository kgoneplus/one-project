package com.itbank.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.oneplus.AskDTO;
import com.itbank.oneplus.ProductDTO;
import com.itbank.oneplus.ReviewDTO;
import com.itbank.service.MypageService;

@RestController
public class RestMypageController {

	@Autowired MypageService mypageService;
	
//	 1:1 문의 삭제
	@DeleteMapping("/mypageing/counseling/{idx}")
	public int askDelete(@PathVariable int idx) {
		return mypageService.askOneDelete(idx);
	}
	
	// 리뷰할 상품
	@GetMapping("/mypageing/reviewing/{idx}")
	public List<ProductDTO> selectReviewList(@PathVariable int idx) {
		return mypageService.selectReviewList(idx);
	}
	
	//1:1문의 내역보기
	@GetMapping("/mypageing/counsel/{idx}")
	public List<AskDTO> selectAskAll(@PathVariable int idx){
		return mypageService.selectAskAll(idx);
	}
	
	// 
	@PostMapping("/mypageing/reviewWrite")
	public int writeReview(@RequestBody ReviewDTO dto) {
//		System.out.println("컨트롤러productMain_idx : " + dto.getProductMain_idx());
//		System.out.println("컨트롤러Member_idx : " + dto.getMember_idx());
//		System.out.println("컨트롤러ReviewGrade : " + dto.getReviewGrade());
//		System.out.println("컨트롤러Content : " + dto.getContent());
//		System.out.println("컨트롤러pState : " + dto.getpState());
//		System.out.println("컨트롤러pSame : " + dto.getpSame());
//		System.out.println("컨트롤러price : " + dto.getPrice());
		return mypageService.writeReview(dto);
	}
	
	// 1:1문의 내역 상세보기
	@GetMapping("/mypageing/counseling/{idx}")
	public AskDTO selectAskOne(@PathVariable int idx) {
		return mypageService.selectAskOne(idx);
	}
	
	// 찜목록
	@GetMapping("/mypage/wishlists/{member_idx}")
	public List<ProductDTO> selectWishlist(@PathVariable int member_idx) {
		return mypageService.selectWishlist(member_idx);
	}
}
