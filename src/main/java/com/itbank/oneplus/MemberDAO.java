package com.itbank.oneplus;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface MemberDAO {
	
	// 통합 회원 가입할때
	@Insert("insert into integration_member(idx, name, address, gender, birth, phonenum, userid, userpw, email)\r\n" + 
			"       	 values (MEMBER_SEQ.nextval,  #{name}, #{address}, #{gender}, #{birth}, " + 
			"         #{phonenum}, #{userid}, #{userpw}, #{email})")
	int insert(MemberDTO dto);
	
	// 회원 아디디 중복확인할때
	@Select("select userid from parent_member")
	List<MemberDTO> selectMemberList();
	
	// 회원 로그인 할때
	@Select("select * from parent_member where userid=#{userid} and userpw=#{userpw}")
	MemberDTO selectOne(MemberDTO dto);
	
	// 네이버 로그인 
	@Select("select * from parent_member where email=#{email} and name=#{name} and phonenum=#{phonenum}")
	MemberDTO naverconfirm(MemberDTO dto);
	
	// 회원 테이블 전체 부르기
	@Select("select * from parent_member")
	List<MemberDTO> memberconfirm();

}
