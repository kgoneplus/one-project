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
import org.springframework.web.bind.annotation.RestController;

import com.itbank.oneplus.DeliveryDTO;
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
		List<ProductcartDTO> list = service.deliveryInfoSelectList(member_idx, itemList);
		if(list != null) {
			session.setAttribute("orderList", list);
			return "세션 저장 성공";
		}
		return "세션 저장 실패";
	}
	
	@PostMapping(value="/buying/cart/delivery", produces="application/json; charset=utf-8")
	public int insertAddress(@RequestBody DeliveryDTO dto) {
		return service.insertAddress(dto);
	}
	
	@GetMapping(value="/buying/cart/delivery/{member_idx}", produces="application/json; charset=utf-8")
	public List<DeliveryDTO> addressList(@PathVariable int member_idx) {
		return service.addressList(member_idx);
	}
	
	@PutMapping(value="/buying/cart/delivery", produces="application/json; charset=utf-8")
	public DeliveryDTO addressSelectOne(@RequestBody HashMap<String, String> param) {
		return service.addressSelectOne(param);
	}
	
	@PostMapping(value="/buying/cart/delivery/insert", produces="application/json; charset=utf-8")
	public int updateAddress(@RequestBody DeliveryDTO dto) {
		return service.updateAddress(dto);
	}
	
	@DeleteMapping(value="/buying/cart/delivery", produces="application/json; charset=utf-8")
	public int deleteAddress(@RequestBody HashMap<String, String> param) {
		return service.deleteAddress(param);
	}
	
	@PostMapping(value="/buying/cart/pay/{member_idx}", produces="application/json; charset=utf-8")
	public List<ProductcartDTO> paymentbox(@PathVariable int member_idx, @RequestBody List<String> itemList) {
		return service.deliveryInfoSelectList(member_idx, itemList);
	}
}
