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

	@GetMapping("/deliveryInfo/{idx}")
	public ModelAndView deliveryInfo(@PathVariable int idx, @RequestBody List<String> itemList) {
		ModelAndView mav = new ModelAndView();
		List<ProductcartDTO> list = service.deliveryInfoSelectList(idx, itemList);
		mav.addObject("list", list);
		return mav;
	}
	
}
