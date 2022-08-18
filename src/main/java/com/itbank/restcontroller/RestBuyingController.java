package com.itbank.restcontroller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.oneplus.ProductcartDAO;
import com.itbank.oneplus.ProductcartDTO;
import com.itbank.service.ProductcartService;

@RestController
public class RestBuyingController {
	
	@Autowired private ProductcartDAO dao;
	@Autowired private ProductcartService service;

	@GetMapping(value="/buying/cart/home/{member_idx}", produces="application/json; charset=utf-8")
	public List<ProductcartDTO> select(@PathVariable int member_idx) {
		return dao.selectList(member_idx);
	}
	
	@DeleteMapping(value="/buying/cart/home")
	public int delete(@RequestBody ProductcartDTO dto) {
		return dao.cartDelete(dto);
	}
	
	@PutMapping(value="/buying/cart/home", produces="application/json; charset=utf-8")
	public int updateCnt(@RequestBody ProductcartDTO dto) {
		return dao.cartUpdate(dto);
	}
	
	@PutMapping(value="/buying/cart/home/{member_idx}", produces="text/plain; charset=utf-8")
	public String storeSession(@PathVariable int member_idx, @RequestBody List<String> itemList, HttpSession session) {
//		System.out.println("controller member_idx : " + member_idx);
//		System.out.println("controller itemList : " + itemList);
		List<ProductcartDTO> list = service.deliveryInfoSelectList(member_idx, itemList);
		if(list != null) {
//			System.out.println("세션 저장 list : " + list);
			session.setAttribute("orderList", list);
			return "세션 저장 성공";
		}
		return "세션 저장 실패";
	}
	
}
