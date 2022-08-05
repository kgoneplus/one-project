package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.oneplus.ProductDAO;
import com.itbank.oneplus.ProductDTO;

@Service
public class MainService {
	
	@Autowired private ProductDAO dao;

	public List<ProductDTO> mainloadList(String mainList_cate) {
		if(mainList_cate.equals("신선식품")) {
			return dao.freshList();
		}
		else if(mainList_cate.equals("가공품")) {
			return dao.processingList();
		}
		else if(mainList_cate.equals("생활용품")) {
			return dao.lifeList();
		}
		else if(mainList_cate.equals("냉동식품")) {
			return dao.freezingList();
		}
//		System.out.println(mainList_cate);
		return dao.selectList();
	}

}
