package com.itbank.oneplus;

import java.util.List;

//PRODUCTMAIN_IDX          NUMBER        
//PRODUCTCNT               NUMBER        
//PRODUCTPRICE             NUMBER        
//ORDERSTATUS              VARCHAR2(100) 
//CLAIMSTATUS

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Repository
public interface OrdersDAO {

	int insertOrders(OrdersDTO dto);

	@Insert("insert into ordersDetail (orders_idx, productMain_idx, productCnt, productPrice) "
			+ "values (#{orders_idx}, #{productMain_idx}, #{productCnt}, #{productPrice})")
	int insertOrdersDetail(OrdersDetailDTO eachdto);

	@Select("select max(idx) from orders")
	int getmaxIdx();

	@Select("select * from orders where idx=#{idx}")
	OrdersDTO getOrders(int idx);

	@Select("select * from ordersDetail where orders_idx=#{orders_idx}")
	List<OrdersDetailDTO> getOrdersDetail(int orders_idx);

	@Select("select member_idx from orders where idx=#{orders_idx}")
	int getmemberIdx(int orders_idx);

	@Update("update ordersDetail set orderStatus='결제완료' where idx=#{idx}")
	int updateOrderStatus(int idx);

	List<OrdersDetailDTO> selectOrdersList(int idx);

}