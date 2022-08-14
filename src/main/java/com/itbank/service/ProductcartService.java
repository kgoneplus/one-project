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
		System.out.println("service idx : " + idx);
		System.out.println("service itemList : " + itemList);
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("member_idx", idx);
		param.put("itemList", itemList);
		return dao.deliveryInfoSelectList(param);
	}

}
