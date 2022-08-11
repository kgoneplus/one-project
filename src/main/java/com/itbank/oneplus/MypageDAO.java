package com.itbank.oneplus;

import java.util.HashMap;

import org.apache.ibatis.annotations.Delete;
import org.springframework.stereotype.Repository;

@Repository
public interface MypageDAO {
	
	@Delete("delete from parent_member where userid = #{userid} and userpw = #{userpw}")
	public int delete(MemberDTO dto);

//	@Update("update parent_member "
//			+ " set userpw = #{userpw}, birth = #{birth}, gender = #{gender} "
//			+ " email = #{email}, phonenum = #{phonenum}, address = #{address} "
//			+ " where idx = #{idx}")
	public int update(MemberDTO dto);

}
