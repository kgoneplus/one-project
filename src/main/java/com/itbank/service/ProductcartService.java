package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.oneplus.ProductcartDAO;
import com.itbank.oneplus.ProductcartDTO;

@Service
public class ProductcartService {
	
	@Autowired ProductcartDAO dao;

	public List<ProductcartDTO> deliveryInfoSelectList(int idx, List<String> itemList) {
		HashMap<String, Object> param = null;
		param.put("member_idx", idx);
		for(int i=0; i<itemList.size(); i++) {
			param.put("productMain_idx", itemList.get(i));
		}
		return dao.deliveryInfoSelectList(param);
	}

}