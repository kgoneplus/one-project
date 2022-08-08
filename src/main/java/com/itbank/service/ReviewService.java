package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.oneplus.ReviewDAO;
import com.itbank.oneplus.ReviewDTO;

@Service
public class ReviewService {

	@Autowired private ReviewDAO reviewDAO;
	
	public List<ReviewDTO> reviewList() {
		return reviewDAO.reviewList();
	}

}
