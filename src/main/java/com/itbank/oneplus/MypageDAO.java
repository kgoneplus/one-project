package com.itbank.oneplus;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Repository
public interface MypageDAO {

	// 회원탈퇴
	@Delete("delete from parent_member where userid = #{userid} and userpw = #{userpw}")
	public int delete(MemberDTO dto);

	// 회원정보 불러오기
	@Select("select * from parent_member where idx = #{idx}")
	public MemberDTO selectOneMember(int idx);

	// 회원정보 수정
	@Update("update parent_member set userpw = #{userpw}, gender = #{gender}, "
			+ " email = #{email}, phonenum = #{phonenum}, address = #{address} where idx = #{idx}")
	public int update(MemberDTO dto);
}
