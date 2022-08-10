package com.itbank.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.itbank.oneplus.ProductDAO;
import com.itbank.oneplus.ProductDTO;

@Service
public class ProductService {
	
	@Autowired private ProductDAO dao;

	public ProductDTO selectList(@RequestParam HashMap<String, String> idx) {
		// TODO Auto-generated method stub
		return dao.selectList(idx);
	}

}
