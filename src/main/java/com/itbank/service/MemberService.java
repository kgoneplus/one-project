package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.component.HashComponent;
import com.itbank.oneplus.MemberDTO;
import com.itbank.oneplus.DeliveryDAO;
import com.itbank.oneplus.DeliveryDTO;
import com.itbank.oneplus.MemberDAO;

@Service
public class MemberService {
	
	@Autowired private MemberDAO dao;
	@Autowired private HashComponent hash;
	@Autowired private DeliveryDAO deliveryDao;
	
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
	public MemberDTO naverconfirm(MemberDTO naver, HttpSession session) {
		
		// 테이블에 있는 값들을 불러옴
		List<MemberDTO> members = dao.memberconfirm();
		for(int i = 0; i < members.size(); i++) {
			String email = members.get(i).getEmail();
			String name = members.get(i).getName();
			String phonenum = members.get(i).getPhonenum();
			
			if(naver.getEmail().equals(email)  && 
			   naver.getName().equals(name) &&
			   naver.getPhonenum().equals(phonenum)	) {
				
				// 테이블의 값과 같으면 다시 테이블에서 객체 모두를 가져와줌
				session.setAttribute("login", dao.naverconfirm(naver));
				return null;
			}
			
		}
		return naver;
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
	
	public int idsearch(MemberDTO dto) {
		
		return 0;
	}
	public int updatedefaultAddress(HashMap<String, String> param) {
		DeliveryDTO dto = deliveryDao.selectDeliveryOne(param);
		String address = dto.getAddr1() + "/" +  dto.getAddr2() + "/" +  dto.getAddr3() + "/" + dto.getdInfo1();
		param.put("address", address);
		return dao.updateAddress(param);
	}
	
	
	

}
