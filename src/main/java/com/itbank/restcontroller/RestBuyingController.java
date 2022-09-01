package com.itbank.restcontroller;

//import java.io.IOException;
//import java.net.HttpURLConnection;
//import java.net.MalformedURLException;
//import java.net.URL;
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

	@GetMapping(value="/buying/cart/home/{member_idx}", produces="application/json; charset=utf-8")
	public List<ProductcartDTO> select(@PathVariable int member_idx) {
//		return dao.selectList(member_idx);
		return service.selectList(member_idx);
	}
	
	@DeleteMapping(value="/buying/cart/home")
	public int delete(@RequestBody ProductcartDTO dto) {
//		return dao.cartDelete(dto);
		return service.cartDelete(dto);
	}
	
	@PutMapping(value="/buying/cart/home", produces="application/json; charset=utf-8")
	public int updateCnt(@RequestBody ProductcartDTO dto) {
//		return dao.cartUpdate(dto);
		return service.cartUpdate(dto);
	}
	
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
			//interceptor 후에 확인 필요!
			return "redirect:/buying/deliveryInfo";
		}
		return "redirect:/buying/cart/home/" + member_idx;
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
	
	@PutMapping(value="/buying/cart/deliveryUpdate")
	public int updatedefaultAddress(@RequestBody HashMap<String, String> param) {
		return service.updatedefaultAddress(param);
	}
	
	@PostMapping(value="/buying/insertOrder")
	public int insertOrder(@RequestBody OrdersDTO dto, HttpSession session) {
		int ordersIdx = service.insertOrders(dto);
		if(ordersIdx == 1) ordersIdx = service.getmaxIdx();
//		System.out.println("ordersIdx : " + ordersIdx);
		int insertOrdersDetail = service.insertOrdersDetail(ordersIdx, session);
		if(insertOrdersDetail == 1) return ordersIdx;
		else return 0;
	}
	
	@PostMapping(value="/buying/kakaopay")
	@CrossOrigin
	public void kakaopay() {
//		try {
//		URL url = new URL("http://kapi.kakao.com/v1/payment/approve");
//		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//		conn.setRequestMethod("POST");
//		conn.setRequestProperty("Authorization", "KakaoAK 84098da293601af21d10b10a0f28a008");
//		conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
//		conn.setDoOutput(true);
//		String parameter = "cid=TC0ONETIME"
//						+ "partner_order_id=partner_order_id"
//						+ "partner_user_id=partner_user_id"
//						+ "item_name=" + ""
//						+ "quantity=1"
//						+ "total_amount=2200"
//						+ "tax_free_amount=0"
//						+ "approval_url=https://developers.kakao.com/success"
//						+ "fail_url=https://developers.kakao.com/fail"
//						+ "cancel_url=https://developers.kakao.com/cancel";
//		} catch (MalformedURLException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}		
	}
	
	@GetMapping(value="/buying/getOrders/{idx}")
	public OrdersDTO getOrders(@PathVariable int idx) {
		return service.getOrders(idx);
	}
	
	@GetMapping(value="/buying/getMember/{idx}")
	public MemberDTO getMember(@PathVariable int idx) {
		return service.getMember(idx);
	}
	
	@DeleteMapping(value="/buying/cart/delete/{idx}")
	public int deleteproductCart(@PathVariable int idx) {
		return service.deleteProductCart(idx);
	}
}
