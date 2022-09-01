package com.itbank.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.component.HashComponent;
import com.itbank.oneplus.MemberDTO;
import com.itbank.oneplus.MemberDAO;

@Service
public class MemberService {
	
	@Autowired private MemberDAO dao;
	@Autowired private HashComponent hash;
	@Autowired private MailService ms;

	
	// 통합 회원가입 
	public int insert(MemberDTO dto) {
		String address = dto.getAddr_number() +"/"+  dto.getAddr_juso() +"/"+ dto.getAddr_detail() +"/"+  dto.getAddr_Reference();
		dto.setAddress(address);							// 주소API로 전달한 각각의 주소를 address로 합친다
		String hashpw = hash.getHash(dto.getUserpw());		// 비밀번호를 해시처리하고
		dto.setUserpw(hashpw);								// 해시값을 다시 dto에 넣어준다
		int row = dao.insert(dto);							// 해시값을 포함한 dto를 insert 한다
		return row;
	}
	// 네이버 회원가입
		public int naverinsert(MemberDTO dto) {
			String address = dto.getAddr_number() +"/"+  dto.getAddr_juso() +"/"+ dto.getAddr_detail() +"/"+  dto.getAddr_Reference();
			dto.setAddress(address);							// 주소API로 전달한 각각의 주소를 address로 합친다
			String hashpw = hash.getHash(dto.getUserpw());		// 비밀번호를 해시처리하고
			dto.setUserpw(hashpw);								// 해시값을 다시 dto에 넣어준다
			int row = dao.naverinsert(dto);							// 해시값을 포함한 dto를 insert 한다
			return row;
		}
	
	// 부모 회원 태이블 부르기
	public List<MemberDTO> selectMemberList() {
		return dao.selectMemberList();
	}
	
	// 로그인 비번 해쉬풀고보네기
	public MemberDTO login(MemberDTO dto) {
		
		String hashpw = hash.getHash(dto.getUserpw());
		dto.setUserpw(hashpw);
		MemberDTO login = dao.selectOne(dto);

		return login;
	}
	
	// 네이버 로그인또는 회원가입시 회원인지 아닌지 판별해서 로그인시키거나 naver dto 리턴하기
	public MemberDTO naverconfirm(MemberDTO naver) {
		
		// 테이블에 있는 값들을 불러옴
		MemberDTO naverLogin = dao.naverconfirm(naver);
		if(naverLogin != null) {
			return naverLogin;
		}else {
			return null;
		}
		
	}
	// 카카오 로그인 또는 회원 가입시 회원인지 아닌지 판별해서 로그인 시키거나 kakao dto 리턴하기
	public MemberDTO kakaoconfirm(MemberDTO kakao, HttpSession session) {
		List<MemberDTO> members = dao.memberconfirm();
		for(int i = 0; i < members.size(); i++) {
			String email = members.get(i).getEmail();
			String name = members.get(i).getName();
			
			if(kakao.getEmail().equals(email) &&
				kakao.getName().equals(name)) {
				session.setAttribute("login", dao.kakaoconfirm(kakao));
				return null;
			}
		}
		return kakao;
	}
	public int kakaoinsert(MemberDTO dto) {
		String address = dto.getAddr_number() +"/"+  dto.getAddr_juso() +"/"+ dto.getAddr_detail() +"/"+  dto.getAddr_Reference();
		dto.setAddress(address);							// 주소API로 전달한 각각의 주소를 address로 합친다
		String hashpw = hash.getHash(dto.getUserpw());		// 비밀번호를 해시처리하고
		dto.setUserpw(hashpw);								// 해시값을 다시 dto에 넣어준다
		int row = dao.kakaoinsert(dto);							// 해시값을 포함한 dto를 insert 한다
		return row;
	}
	
	public int idsearch(MemberDTO dto) throws AddressException, IOException, MessagingException {
		MemberDTO result = dao.selectIdserachConfirm(dto);
		if(result != null) {
			return ms.sendMail(result);
		}else {
			System.out.println("불일치");
			return 0;
		}
	}
	// 
	public int passUpdate(MemberDTO dto) {
		
		String hashpw = hash.getHash(dto.getUserpw());
		dto.setUserpw(hashpw);
		
		return dao.passUpdate(dto);
	}


}
