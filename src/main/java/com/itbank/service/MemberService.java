package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.component.HashComponent;
import com.itbank.oneplus.MemberDTO;
import com.itbank.oneplus.MemberDAO;

@Service
public class MemberService {
	
	@Autowired private MemberDAO dao;
	@Autowired private HashComponent hash;
	
	public int insert(MemberDTO dto) {
		String address = dto.getAddr_number() +"/"+  dto.getAddr_juso() +"/"+ dto.getAddr_detail() +"/"+  dto.getAddr_Reference();
		dto.setAddress(address);
		String hashpw = hash.getHash(dto.getUserpw());		// 비밀번호를 해시처리하고
		dto.setUserpw(hashpw);			// 해시값을 다시 dto에 넣어준다
		int row = dao.insert(dto);		// 해시값을 포함한 dto를 insert 한다
		return row;
	}
	public List<MemberDTO> selectMemberList() {
		return dao.selectMemberList();
	}
	
	public MemberDTO login(MemberDTO dto) {
		
//		String hashpw = hash.getHash(dto.getUserpw());
//		dto.setUserpw(hashpw);
		MemberDTO login = dao.selectOne(dto);

		return login;
	}
}
