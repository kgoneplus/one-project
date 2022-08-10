package com.itbank.oneplus;

import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

@Repository
public interface AskDAO {

	// 문의하기 2022 08 09 ~ 작업중입니다
	@Insert("insert into ask (member_idx, idx, askType, orderProduct, title, content, img)"
			+ " values (#{member_idx}, #{idx}, #{askType}, #{orderProduct}, #{title}, #{content}, #{img})")
	int insert(AskDTO dto);

}
