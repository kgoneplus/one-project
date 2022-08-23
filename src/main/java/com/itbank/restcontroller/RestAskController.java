package com.itbank.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.oneplus.AskDTO;
import com.itbank.service.MypageService;

@RestController
public class RestAskController {

	@Autowired MypageService mypageService;
	
	// 1:1 문의 내역
	@GetMapping("/mypageing/counsel/{idx}")
	public List<AskDTO> selectAskAll(@PathVariable int idx) {
//		System.out.println("==================");
//		System.out.println("loginidx : " + idx);
		return mypageService.selectAskAll(idx);
	}
	
	// 1:1 문의 상세 보기
	@GetMapping("/mypageing/counseling/{idx}")
	public AskDTO selectAskOne(@PathVariable int idx) {
		return mypageService.selectAskOne(idx);
	}
	
	// 1:1 문의 삭제
	@DeleteMapping("/mypageing/counseling/{idx}")
	public int askDelete(@PathVariable int idx) {
		return mypageService.askOneDelete(idx);
	}
}
