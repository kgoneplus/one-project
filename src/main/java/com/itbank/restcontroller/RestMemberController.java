package com.itbank.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.oneplus.IntegrationJoinDAO;
import com.itbank.oneplus.IntegrationMemberDTO;
import com.itbank.oneplus.MemberDTO;



@RestController
@RequestMapping("/joining")
public class RestMemberController {
	//https://member.homeplus.co.kr/member-join?useAgent=PC&procSystem=APP01통합가입폼
	//https://member.homeplus.co.kr/member-join-form		통합가입폼
	//https://sso.homeplus.co.kr/refit/register/registerPage 네이버 로그인폼
	@Autowired private IntegrationJoinDAO dao;
	
	@PostMapping("/integrationjoining")
	public int insert(@RequestBody IntegrationMemberDTO dto) {
		return dao.insert(dto);
	}
	@GetMapping("/memberload")
	public List<MemberDTO> memeberList(){
		return dao.selectMemverList();
	}
}
