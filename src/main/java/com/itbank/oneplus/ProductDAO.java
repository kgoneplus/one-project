package com.itbank.oneplus;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductDAO {
	
	// 매인 전체 상품 불러오기
	@Select("select * from productMain order by idx "
			+ "offset #{offset} rows "
			+ "fetch next 20 rows only")
	List<ProductDTO> selectList(int offset);
	
	// 매인 냉동식품 불러오기
	@Select("select * from productMain where categorycode between '130' and '142' order by idx"
			+ " offset #{offset} rows "
			+ "fetch next 20 rows only")
	List<ProductDTO> freezingList(int offset);
	
	// 매인 신선식품 불러오기
	@Select("select * from productMain where categorycode between '001' and '019' "
			+ "or categorycode between '039' and '074' "
			+ "or categorycode between '084' and '095' order by idx"
			+ " offset #{offset} rows "
			+ "fetch next 20 rows only")
	List<ProductDTO> freshList(int offset);
	
	// 매인 가공식품 불러오기
	@Select("select * from productMain where categorycode between '106' and '119' "
			+ "or categorycode between '170' and '183' order by idx"
			+ " offset #{offset} rows "
			+ "fetch next 20 rows only")
	List<ProductDTO> processingList(int offset);
	
	// 매인 생활용품 불러오기
	@Select("select * from productMain "
			+ "where categorycode between '184' and '239' "
			+ "order by idx desc "
			+ "offset #{offset} rows "
			+ "fetch next 20 rows only")
	List<ProductDTO> lifeList(int offset);

	// 카테고리에서 클릭한 상품 리스트 보여주기
	@Select("select * from productMain "
			+ " where category1 #{category1} and"
			+ "category2 #{category} order by idx")
	ProductDTO selectList(HashMap<String, String> idx);
	
	
}
