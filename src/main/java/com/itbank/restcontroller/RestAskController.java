package com.itbank.restcontroller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.oneplus.AskDTO;
import com.itbank.service.MypageService;

@RestController
public class RestAskController {

	@Autowired MypageService mypageService;
	
	// 1:1 문의 내역
	@GetMapping("/mypageing/counseling")
	public List<AskDTO> selectAskAll(HttpSession session) {
		session.getAttribute("idx");
		// 세션값 가져와서 DAO에 전달해야함
		return mypageService.selectAskAll();
	}
	
	// 1:1 문의 상세 보기
	@GetMapping("/mypageing/counseling/{idx}")
	public AskDTO selectAskOne(@PathVariable int idx) {
		return mypageService.selectAskOne(idx);
	}
}
