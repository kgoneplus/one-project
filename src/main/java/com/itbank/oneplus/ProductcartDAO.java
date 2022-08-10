package com.itbank.oneplus;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface ProductcartDAO {

	List<ProductcartDTO> selectList(int member_idx);

}
