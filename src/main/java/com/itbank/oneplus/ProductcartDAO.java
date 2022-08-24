package com.itbank.oneplus;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductcartDAO {

	List<ProductcartDTO> selectList(int member_idx);

	@Delete("delete productCart where productMain_idx=${productMain_idx} and member_idx=${member_idx}")
	int cartDelete(ProductcartDTO dto);

	ProductcartDTO deliveryInfoSelectList(HashMap<String, Object> param);

	@Update("update productCart set cnt=${cnt} where productMain_idx=${productMain_idx} and member_idx=${member_idx}")
	int cartUpdate(ProductcartDTO dto);
	

	
}
