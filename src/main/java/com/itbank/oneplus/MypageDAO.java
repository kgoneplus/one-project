package com.itbank.oneplus;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
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

	// 1:1 문의하기 (이미지 없이_미완성)
	@Insert("insert into ask (member_idx, askType, title, content)"
			+ " values (#{member_idx}, #{askType}, #{title}, #{content})")
	public int askWrite(AskDTO dto);

	// 1:1 문의 내역 (로그인 정보의 idx와 문의 테이블의 member_idx가 같은 것만 출력하도록 작성해야함)
//	@Select("select A.* from ask A "
//			+ "join parent_member M "
//			+ "on A.member_idx = M.idx "
//			+ "where M.idx = #{idx}")	// 현재 로그인한 사용자의 idx(세션에서 불러오기)
	@Select("select * from ask order by idx desc")
	List<AskDTO> selectAskAll();

	// 1:1 문의 상세 보기
	@Select("select * from ask where idx = #{idx}")
	public AskDTO selectAskOne(int idx);
	
}
