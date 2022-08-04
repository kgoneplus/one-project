package com.itbank.product;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductDAO {

	@Select("select * from productMain order by idx")
	List<ProductDTO> selectList();

	@Select("select * from productMain where categorycode between '130' and '142' order by idx")
	List<ProductDTO> freezingList();

	@Select("select * from productMain where categorycode between '001' and '019' "
			+ "or categorycode between '039' and '074' "
			+ "or categorycode between '084' and '095' order by idx")
	List<ProductDTO> freshList();

	@Select("select * from productMain where categorycode between '106' and '119' "
			+ "or categorycode between '170' and '183' order by idx")
	List<ProductDTO> processingList();

	@Select("select * from productMain where categorycode between '184' and '239' order by idx")
	List<ProductDTO> lifeList();
	
	
}
