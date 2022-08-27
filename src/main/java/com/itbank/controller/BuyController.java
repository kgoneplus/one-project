package com.itbank.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.service.ProductcartService;


@Controller
@RequestMapping("/buying")
public class BuyController {
	
	@Autowired ProductcartService service;
	
	@GetMapping("/cart")
	public void cartinterceptor() {
	};	// 인터셉터를위한 더미
	
	@GetMapping("/cart/{member_idx}")
	public ModelAndView cart(@PathVariable int member_idx) {
		ModelAndView mav = new ModelAndView("/buying/cart");
		mav.addObject("deliveryDefault", service.deliveryDefault(member_idx));
		return mav;
	}
	
	@GetMapping("/deliveryInfo/{member_idx}")
	public ModelAndView deliveryInfo(@PathVariable int member_idx) {
		ModelAndView mav = new ModelAndView("/buying/deliveryInfo");
		mav.addObject("deliveryDate", service.deliveryDateCal());
		mav.addObject("deliveryDefault", service.deliveryDefault(member_idx));
		return mav;
	}
		
}
