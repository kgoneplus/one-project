package com.itbank.oneplus;

//PRODUCTMAIN_IDX          NUMBER        
//PRODUCTCNT               NUMBER        
//PRODUCTPRICE             NUMBER        
//ORDERSTATUS              VARCHAR2(100) 
//CLAIMSTATUS

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface OrdersDAO {

	int insertOrders(OrdersDTO dto);

	@Insert("insert into ordersDetail (orders_idx, productMain_idx, productCnt, productPrice) values (#{orders_idx}, #{productMain_idx}, #{productCnt}, #{productPrice}, #{orderStatus})")
	int insertOrdersDetail(OrdersDetailDTO eachdto);

	@Select("select max(idx) from orders")
	int getmaxIdx();

}