package com.itbank.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.itbank.oneplus.OrdersDetailDTO;
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
	public ModelAndView orders(HttpSession session) {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		ModelAndView mav = new ModelAndView("/mypage/orders");
		List<List<OrdersDetailDTO>> finalOrderlist = mypageService.selectOrdersList(dto.getIdx());
		mav.addObject("finalOrderlist", finalOrderlist);
		return mav;
	}
	
	// 인터셉터를 위한 더미
	@GetMapping("/myinfo")
	public void info() {}
	
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

	// 리뷰 페이지
	@GetMapping("/review")
	public void reviewList() {
	}
	
	// 1:1 문의페이지
	@GetMapping("/counsel")
	public void counsel() {
	}

	// 1:1 문의 작성(관리자 코멘트 작성 해야함)
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
		
		String[] address = dto.getAddress().split("/");
		dto.setAddr_number(address[0]);
		dto.setAddr_juso(address[1]);
		dto.setAddr_detail(address[2]);
		dto.setAddr_Reference(address[3]);
		
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
