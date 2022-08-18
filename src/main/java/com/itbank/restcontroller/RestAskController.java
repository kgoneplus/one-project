package com.itbank.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.oneplus.AskDTO;
import com.itbank.service.MypageService;

@RestController
public class RestAskController {

	@Autowired MypageService mypageService;
	
	// 1:1 문의 내역
	@GetMapping("/mypageing/counseling")
	public List<AskDTO> selectAskAll() {
		return mypageService.selectAskAll();
	}
}
