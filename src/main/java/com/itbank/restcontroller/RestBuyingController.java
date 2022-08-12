package com.itbank.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.oneplus.ProductcartDAO;
import com.itbank.oneplus.ProductcartDTO;

@RestController
public class RestBuyingController {
	
	@Autowired private ProductcartDAO dao;

	@GetMapping(value="/buying/cart/home/{member_idx}", produces="application/json; charset=utf-8")
	public List<ProductcartDTO> select(@PathVariable int member_idx) {
		return dao.selectList(member_idx);
	}
	
	@DeleteMapping(value="/buying/cart/home")
	public int delete(@RequestBody ProductcartDTO dto) {
		return dao.cartDelete(dto);
	}
}
