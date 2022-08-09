package com.itbank.oneplus;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface MemberDAO {
	
	@Insert("insert into integration_member(idx, name, address, gender, birth, phonenum, userid, userpw, email)\r\n" + 
			"       	 values (MEMBER_SEQ.nextval,  #{name}, #{address}, #{gender}, #{birth}, " + 
			"         #{phonenum}, #{userid}, #{userpw}, #{email})")
	int insert(MemberDTO dto);
	
	
	@Select("select userid from parent_member")
	List<MemberDTO> selectMemberList();

	@Select("select * from parent_member where userid=#{userid} and userpw=#{userpw}")
	MemberDTO selectOne(MemberDTO dto);

}
