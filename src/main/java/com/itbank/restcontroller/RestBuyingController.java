package com.itbank.restcontroller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.oneplus.DeliveryDTO;
import com.itbank.oneplus.MemberDTO;
import com.itbank.oneplus.OrdersDTO;
import com.itbank.oneplus.ProductcartDTO;
import com.itbank.service.ProductcartService;

@RestController
public class RestBuyingController {
	
	@Autowired private ProductcartService service;

	
	//장바구니 목록 불러오기
	@GetMapping(value="/buying/cart/home/{member_idx}", produces="application/json; charset=utf-8")
	public List<ProductcartDTO> select(@PathVariable int member_idx) {
		return service.selectList(member_idx);
	}
	
	//장바구니 목록 상품 삭제
	@DeleteMapping(value="/buying/cart/home")
	public int delete(@RequestBody ProductcartDTO dto) {
		return service.cartDelete(dto);
	}
	
	//장바구니 목록 상품 수량 변경
	@PutMapping(value="/buying/cart/home", produces="application/json; charset=utf-8")
	public int updateCnt(@RequestBody ProductcartDTO dto) {
		return service.cartUpdate(dto);
	}
	
	//장바구니 선택상품 금액창(PaymentBox)
	@PutMapping(value="/buying/cart/home/{member_idx}", produces="text/plain; charset=utf-8")
	public String storeSession(@PathVariable int member_idx, @RequestBody List<String> itemList, HttpSession session) {
		List<ProductcartDTO> list = service.deliveryInfoSelectList(member_idx, itemList);
		if(list != null) {
			session.setAttribute("orderList", list);
			int tP = 0;
			int discount = 0;
			int pay = 0;
			for(int i=0; i<list.size(); i++) {
				ProductcartDTO dto = list.get(i);
				tP += dto.getProductPrice() * dto.getCnt();
				discount += dto.getProductDiscount() * dto.getCnt();
				pay = tP - discount;
			}
			session.setAttribute("totalPrice", tP);
			session.setAttribute("pay", pay);
			session.setAttribute("discountPrice", discount);
			session.setAttribute("deliveryFee", pay >= 40000 ? 0 : 3000);
			return "redirect:/buying/deliveryInfo";
		}
		return "redirect:/buying/cart/home/" + member_idx;
	}
	
	//배송관리 -> 배송지추가
	@PostMapping(value="/buying/cart/delivery", produces="application/json; charset=utf-8")
	public int insertAddress(@RequestBody DeliveryDTO dto) {
		return service.insertAddress(dto);
	}
	
	//배송관리 -> 배송지목록 불러오기
	@GetMapping(value="/buying/cart/delivery/{member_idx}", produces="application/json; charset=utf-8")
	public List<DeliveryDTO> addressList(@PathVariable int member_idx) {
		return service.addressList(member_idx);
	}
	
	//배송관리 -> 기본 배송지 불러오기
	@PutMapping(value="/buying/cart/delivery", produces="application/json; charset=utf-8")
	public DeliveryDTO addressSelectOne(@RequestBody HashMap<String, String> param) {
		return service.addressSelectOne(param);
	}
	
	//배송관리 -> 배송지 수정
	@PostMapping(value="/buying/cart/delivery/insert", produces="application/json; charset=utf-8")
	public int updateAddress(@RequestBody DeliveryDTO dto) {
		return service.updateAddress(dto);
	}
	
	//배송관리 -> 배송지 삭제
	@DeleteMapping(value="/buying/cart/delivery", produces="application/json; charset=utf-8")
	public int deleteAddress(@RequestBody HashMap<String, String> param) {
		return service.deleteAddress(param);
	}
	
	//배송정보=주문페이지에서 상품 목록 불러오기
	@PostMapping(value="/buying/cart/pay/{member_idx}", produces="application/json; charset=utf-8")
	public List<ProductcartDTO> paymentbox(@PathVariable int member_idx, @RequestBody List<String> itemList) {
		return service.deliveryInfoSelectList(member_idx, itemList);
	}
	
	//배송관리 -> 기본 배송지로 변경
	@PutMapping(value="/buying/cart/deliveryUpdate")
	public int updatedefaultAddress(@RequestBody HashMap<String, String> param) {
		return service.updatedefaultAddress(param);
	}
	
	//결제클릭 시, 주문테이블에 insert
	@PostMapping(value="/buying/insertOrder")
	public int insertOrder(@RequestBody OrdersDTO dto, HttpSession session) {
		int ordersIdx = service.insertOrders(dto);
		if(ordersIdx == 1) ordersIdx = service.getmaxIdx();
//		System.out.println("ordersIdx : " + ordersIdx);
		int insertOrdersDetail = service.insertOrdersDetail(ordersIdx, session);
		if(insertOrdersDetail == 1) return ordersIdx;
		else return 0;
	}
	
	//결제 시, 주문번호 불러오기
	@GetMapping(value="/buying/getOrders/{idx}")
	public OrdersDTO getOrders(@PathVariable int idx) {
		return service.getOrders(idx);
	}
	
	//결제 시, 주문자(회원) 정보 불러오기
	@GetMapping(value="/buying/getMember/{idx}")
	public MemberDTO getMember(@PathVariable int idx) {
		return service.getMember(idx);
	}
	
	//결제 후, 장바구니 목록에서 삭제
	@DeleteMapping(value="/buying/cart/delete/{idx}")
	public int deleteproductCart(@PathVariable int idx) {
		return service.deleteProductCart(idx);
	}
}
