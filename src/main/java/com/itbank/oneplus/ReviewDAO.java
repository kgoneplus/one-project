package com.itbank.oneplus;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface ReviewDAO {

	@Select("select * from review")
	List<ReviewDTO> reviewList();

}
