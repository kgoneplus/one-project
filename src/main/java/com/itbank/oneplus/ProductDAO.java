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
	@Select("select * from productMain where categorycode between '300019' and '300024' "
			+ "or categorycode between '300144' and '300145' order by idx"
			+ " offset #{offset} rows "
			+ "fetch next 20 rows only")
	List<ProductDTO> freezingList(int offset);
	
	// 매인 신선식품 불러오기
	@Select("select * from productMain where categorycode between '300001' and '300048' "
			+ "or categorycode between '300072' and '300099' "
			+ "order by idx"
			+ " offset #{offset} rows "
			+ "fetch next 20 rows only")
	List<ProductDTO> freshList(int offset);
	
	// 매인 가공식품 불러오기
	@Select("select * from productMain where categorycode between '300202' and '300219' "
			+ "or categorycode between '300340' and '300354' order by idx"
			+ " offset #{offset} rows "
			+ "fetch next 20 rows only")
	List<ProductDTO> processingList(int offset);
	
	// 매인 생활용품 불러오기
	@Select("select * from productMain "
			+ "where categorycode between '300501' and '300584' "
			+ "order by idx desc "
			+ "offset #{offset} rows "
			+ "fetch next 20 rows only")
	List<ProductDTO> lifeList(int offset);

	// 카테고리에서 클릭한 상품 리스트 보여주기
	List<ProductDTO> categoryList(HashMap<String, String> idx);

	
	
}
