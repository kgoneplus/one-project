package com.itbank.oneplus;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface MemberDAO {
	
	// 회원가입
	@Insert("insert into integration_member(idx, name, address, gender, birth, phonenum, userid, userpw, email)\r\n" + 
			"       	 values (MEMBER_SEQ.nextval,  #{name}, #{address}, #{gender}, #{birth}, " + 
			"         #{phonenum}, #{userid}, #{userpw}, #{email})")
	int insert(MemberDTO dto);
	
	@Select("select userid from parent_member")
	List<MemberDTO> selectMemberList();

	// 로그인
	@Select("select * from parent_member where userid=#{userid} and userpw=#{userpw}")
	MemberDTO selectOne(MemberDTO dto);
}
