package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.oneplus.ProductcartDTO;
import com.itbank.service.ProductcartService;


@Controller
@RequestMapping("/buying")
public class BuyController {
	
	@Autowired ProductcartService service;
	
	@GetMapping("/cart")
	public void cart() {}
	
	@GetMapping("/deliveryInfo/{member_idx}")
	public String deliveryInfo(@PathVariable int member_idx) {
		return "/buying/deliveryInfo";
	}

//	@GetMapping("/deliveryInfo/home/{member_idx}")
//	public ModelAndView deliveryInfo(@PathVariable int member_idx, @RequestBody List<String> itemList) {
//		ModelAndView mav = new ModelAndView("/buying/deliveryInfo");
//		System.out.println("controller member_idx : " + member_idx);
//		System.out.println("controller itemList : " + itemList);
//		List<ProductcartDTO> list = service.deliveryInfoSelectList(member_idx, itemList);
//		mav.addObject("list", list);
//		return mav;
//	}
	
}
