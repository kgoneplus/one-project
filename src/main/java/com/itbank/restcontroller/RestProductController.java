package com.itbank.restcontroller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.service.ProductService;

@RestController
public class RestProductController {

	@Autowired private ProductService productService;
	

	@PostMapping(value="/product/getcnt")
	public String getcnt(@RequestBody HashMap<String, String> param) {
		String cnt = productService.getcnt(param);
		if(cnt != null) return cnt;
		return "0";
	}
}
