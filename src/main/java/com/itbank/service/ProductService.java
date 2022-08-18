package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.itbank.oneplus.ProductDAO;
import com.itbank.oneplus.ProductDTO;

@Service
public class ProductService {
	
	@Autowired private ProductDAO dao;

	public List<ProductDTO> categoryList(@RequestParam HashMap<String, String> idx) {
		List<ProductDTO> catelist = dao.categoryList(idx);
		
//		System.out.println("서비스이거눙" + catelist);
		return catelist;
	}

	public ProductDTO selectProductOne(int idx) {
		return dao.selectProductOne(idx);
	}

}
