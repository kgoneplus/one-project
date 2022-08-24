package com.itbank.controller;

import java.io.IOException;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.oneplus.AskDTO;
import com.itbank.oneplus.MemberDTO;
import com.itbank.oneplus.ProductDTO;
import com.itbank.oneplus.ProductcartDTO;
import com.itbank.oneplus.ReviewDTO;
import com.itbank.service.MypageService;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@Autowired
	private MypageService mypageService;

	// 마이페이지 메인
	@GetMapping("/mypageMain")
	public void mypage() {
	}

	// 주문/배송 조회
	@GetMapping("/orders")
	public void orders() {
	}

	// 주문상세보기
	@GetMapping("/orderdetail")
	public void orderdetail() {
	}

	// 취소/반품/교환 조회
	@GetMapping("/claim")
	public void claim() {
	}

	// 쿠폰
	@GetMapping("/coupon")
	public void coupon() {
	}

	// 마일리지
	@GetMapping("/point")
	public void point() {
	}

	// 찜 목록
	@GetMapping("/wishlist")
	public void wishlist() {
	}

	// 작성할 리뷰 더미
	@GetMapping("/review")
	public ModelAndView reviewList() {
		ModelAndView mav = new ModelAndView();
		List<ProductDTO> prod = mypageService.selectProdList();
		mav.addObject("prod", prod);
		return mav;
	}

	// 1:1 문의페이지
	@GetMapping("/counsel")
	public void counsel() {
	}

	// 1:1 문의 작성
	@PostMapping("/counsel")
	@ResponseBody
	public int write(@RequestBody AskDTO dto) throws IllegalStateException, IOException {
		return mypageService.askWrite(dto);
	}

	// 회원 정보 관리
	@GetMapping("/myinfo/{idx}")
	public ModelAndView myinfo(@PathVariable int idx) {
		ModelAndView mav = new ModelAndView("mypage/myinfo");
		MemberDTO dto = mypageService.selectOneMember(idx);
		mav.addObject("dto", dto);
		return mav;
	}

	// 수정한 회원 정보를 받았을 때
	@PostMapping("/myinfo/{idx}")
	public String modify(MemberDTO dto) {
		int row = mypageService.modify(dto);
		System.out.println(row != 0 ? "수정 성공" : "수정 실패");
		return "redirect:/mypage/myinfo/" + dto.getIdx();
	}

	// 배송 정보 관리
	@GetMapping("/shipacc")
	public void shipacc() {
	}

	// 개인정보 이용내역
	@GetMapping("/agree")
	public void agree() {
	}

	// 회원 탈퇴페이지로 이동
	@GetMapping("/withdraw")
	public void withdraw() {
	}

	// 회원 탈퇴
	@PostMapping("/withdraw")
	public String delete(MemberDTO dto, HttpServletRequest request) {
		MemberDTO userpw = (MemberDTO) request.getSession().getAttribute("login");

		int row = mypageService.delete(dto);
		if (dto.getUserpw().equals(userpw.getUserpw())) {
			request.getSession().invalidate();
		} else {
			return "redirect:/mypage/withdraw";
		}
		return "redirect:/";
	}
}
