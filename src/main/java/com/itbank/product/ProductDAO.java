package com.itbank.product;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductDAO {
	
	@Select("select * from product order by idx")
	List<ProductDTO> mainloadList();
	
}
