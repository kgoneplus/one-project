package com.itbank.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.oneplus.DeliveryDAO;
import com.itbank.oneplus.DeliveryDTO;
import com.itbank.oneplus.MemberDAO;
import com.itbank.oneplus.MemberDTO;
import com.itbank.oneplus.OrdersDAO;
import com.itbank.oneplus.OrdersDTO;
import com.itbank.oneplus.OrdersDetailDTO;
import com.itbank.oneplus.ProductcartDAO;
import com.itbank.oneplus.ProductcartDTO;


@Service
public class ProductcartService {
	
	@Autowired ProductcartDAO dao;
	@Autowired DeliveryDAO deliveryDao;
	@Autowired OrdersDAO ordersDao;
	@Autowired MemberDAO memberDao;
	
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

	public DeliveryDTO deliveryDefault(int member_idx) {
		return deliveryDao.getdefaultAddress(member_idx);
	}

	public int insertAddress(DeliveryDTO dto) {
		String address = "";
		address += dto.getAddr1() + "/";
		address += dto.getAddr2() + "/";
		address += dto.getAddr3() + "/";
		address += dto.getAddr4();
		dto.setAddress(address);
		return deliveryDao.insertAddress(dto);
	}

	public List<DeliveryDTO> addressList(int member_idx) {
		return deliveryDao.addressList(member_idx);
	}

	public DeliveryDTO addressSelectOne(HashMap<String, String> param) {
		DeliveryDTO dto = deliveryDao.addressSelectOne(param);
		dto.setAddr1(dto.getAddress().split("/")[0]);
		dto.setAddr2(dto.getAddress().split("/")[1]);
		dto.setAddr3(dto.getAddress().split("/")[2]);
		dto.setAddr4(dto.getAddress().split("/")[3]);
		return dto;
	}

	public int updateAddress(DeliveryDTO dto) {
		String address = "";
		address += dto.getAddr1() + "/";
		address += dto.getAddr2() + "/";
		address += dto.getAddr3() + "/";
		address += dto.getAddr4();
		dto.setAddress(address);
		return deliveryDao.updateAddress(dto);
	}

	public int deleteAddress(HashMap<String, String> param) {
		return deliveryDao.deleteAddress(param);
	}

	public int updatedefaultAddress(HashMap<String, String> param) {
		int n = deliveryDao.updateDefaultAddress(param);
		int o = deliveryDao.eraseDefaultAddress(param);
		if(n == 1 && o == 1) return 1;
		else return 0;
	}

	public int insertOrders(OrdersDTO dto) {
		return ordersDao.insertOrders(dto);
	}

	public int insertOrdersDetail(int ordersIdx, HttpSession session) {
		int result = 0;
		List<ProductcartDTO> list = (List<ProductcartDTO>) session.getAttribute("orderList");
//		System.out.println(session.getAttribute("orderList"));
		for(int i=0; i<list.size(); i++) {
			ProductcartDTO cartdto = list.get(i);
			OrdersDetailDTO eachdto = new OrdersDetailDTO();
			eachdto.setOrders_idx(ordersIdx);
			eachdto.setProductMain_idx(cartdto.getProductMain_idx());
			eachdto.setProductPrice(cartdto.getProductPrice());
			eachdto.setProductCnt(cartdto.getCnt());
			result = ordersDao.insertOrdersDetail(eachdto);
		}
		return result;
	}

	public int getmaxIdx() {
		return ordersDao.getmaxIdx();
	}

	public OrdersDTO getOrders(int idx) {
		return ordersDao.getOrders(idx);
	}

	public MemberDTO getMember(int idx) {
		return memberDao.getMember(idx);
	}

	public int deleteProductCart(int orders_idx) {
		List<OrdersDetailDTO> list = ordersDao.getOrdersDetail(orders_idx);
//		System.out.println("list : " + list);
		int member_idx = ordersDao.getmemberIdx(orders_idx);
//		System.out.println("member_idx : " + member_idx);
		int result = 0;
		for(int i=0; i<list.size(); i++) {
			// 장바구니 테이블 삭제
			ProductcartDTO dto = new ProductcartDTO();
			dto.setProductMain_idx(list.get(i).getProductMain_idx());
			dto.setMember_idx(member_idx);
			result = dao.cartDelete(dto);
			// ordersDetail 결제완료로 상태 바꾸기
			ordersDao.updateOrderStatus(list.get(i).getIdx());
			if(result != 1) return result;
		}
		return result;
	}

	public List<ProductcartDTO> selectList(int member_idx) {
		return dao.selectList(member_idx);
	}

	public int cartDelete(ProductcartDTO dto) {
		return dao.cartDelete(dto);
	}

	public int cartUpdate(ProductcartDTO dto) {
		return dao.cartUpdate(dto);
	}

}
