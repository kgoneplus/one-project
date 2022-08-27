package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.oneplus.ProductDAO;
import com.itbank.oneplus.ReviewDTO;

@Service
public class RestViewService {

	@Autowired private ProductDAO prodDAO;
	
	public int selectreviewCount(HashMap<String, Object> param) {
		int reviewCount = prodDAO.selectreviewCount(param);
		return reviewCount;
	}

	public List<ReviewDTO> prodreviewList(HashMap<String, Object> param) {
		return prodDAO.selectreviewList(param);
	}

}
