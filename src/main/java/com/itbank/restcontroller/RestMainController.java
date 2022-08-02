package com.itbank.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.product.ProductDAO;
import com.itbank.product.ProductDTO;

@RestController
public class RestMainController {
	
	@Autowired private ProductDAO dao;
	
	@GetMapping("/mainload")
	public List<ProductDTO> mainloadList(){
		return dao.mainloadList();
	}
}
