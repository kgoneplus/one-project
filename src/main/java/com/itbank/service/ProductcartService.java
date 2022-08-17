package com.itbank.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.oneplus.ProductcartDAO;
import com.itbank.oneplus.ProductcartDTO;


@Service
public class ProductcartService {
	
	@Autowired ProductcartDAO dao;

	public List<ProductcartDTO> deliveryInfoSelectList(int idx, List<String> itemList) {
		List<ProductcartDTO> list = new ArrayList<ProductcartDTO>();
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("member_idx", idx);
		for(int i=0; i<itemList.size(); i++) {
			param.put("productMain_idx", itemList.get(i));
			list.add(dao.deliveryInfoSelectList(param));
		}
//		System.out.println("(service)list : " + list);
		return list;
	}

	public ArrayList<String> deliveryDateCal() {
		Calendar now = Calendar.getInstance();
		SimpleDateFormat smdf  = new SimpleDateFormat("MM.dd");
		ArrayList<String> dateList = new ArrayList<String>();
		now.add(Calendar.DATE, -1);
		for(int i=0; i<5; i++) {
			now.add(Calendar.DATE, 1);
			int dayOfWeek = now.get(Calendar.DAY_OF_WEEK);
			String day = null;
			switch(dayOfWeek) {
			case 1:
				day = " (일)";
				break;
			case 2:
				day = " (월)";
				break;
			case 3:
				day = " (화)";
				break;
			case 4:
				day = " (수)";
				break;
			case 5:
				day = " (목)";
				break;
			case 6:
				day = " (금)";
				break;
			case 7:
				day = " (토)";
				break;
			}
			dateList.add(smdf.format(now.getTime()) + day);
		}
		
		return dateList;
	}

}
