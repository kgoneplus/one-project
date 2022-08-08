package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

import com.itbank.oneplus.ProductDAO;
import com.itbank.oneplus.ProductDTO;

@Service
public class MainService {
	
	@Autowired private ProductDAO dao;

	public List<ProductDTO> mainloadList(String mainList_cate,@PathVariable int offset) {
		if(mainList_cate.equals("신선식품")) {
			return dao.freshList(offset);
		}
		else if(mainList_cate.equals("가공품")) {
			return dao.processingList(offset);
		}
		else if(mainList_cate.equals("생활용품")) {
			return dao.lifeList(offset);
		}
		else if(mainList_cate.equals("냉동식품")) {
			return dao.freezingList(offset);
		}
//		System.out.println(mainList_cate);
		return dao.selectList(offset);
	}

}
