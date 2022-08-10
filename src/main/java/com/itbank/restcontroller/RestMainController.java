package com.itbank.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.oneplus.ProductDTO;
import com.itbank.service.MainService;

@RestController
public class RestMainController {
	
	@Autowired private MainService mainService;
	
	@GetMapping("/mainload/{offset}")
	public List<ProductDTO> mainloadList(String mainList_cate,@PathVariable int offset){
		return mainService.mainloadList(mainList_cate, offset);
	}
}
