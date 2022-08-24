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

	// 1:1 문의 내역
	@Select("select A.* from ask A "
			+ "join parent_member M "
			+ "on A.member_idx = M.idx "
			+ "where M.idx = #{idx}")
	List<AskDTO> selectAskAll(int idx);

	// 1:1 문의 상세 보기
	@Select("select * from ask where idx = #{idx}")
	public AskDTO selectAskOne(int idx);

	// 1:1 문의 삭제
	@Delete("delete ask where idx = #{idx}")
	public int askOneDelete(int idx);

	// 리뷰할 상품 더미
	@Select("select * from productMain where idx < 10")
	public List<ProductDTO> selectProdList();

	// 리뷰 작성
//	@Insert("insert into review (productMain_idx, member_idx, pState, pSame, price, content, Grade, img) "
//			+ "values (#{productMain_idx}, #{member_idx}, #{pState}, #{pSame}, #{price}, #{content}, #{Grade}, #{img})")
	
}
