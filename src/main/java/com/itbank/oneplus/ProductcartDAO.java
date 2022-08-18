package com.itbank.oneplus;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductcartDAO {

	List<ProductcartDTO> selectList(int member_idx);

	@Delete("delete productCart where productMain_idx=${productMain_idx} and member_idx=${member_idx}")
	int cartDelete(ProductcartDTO dto);

	ProductcartDTO deliveryInfoSelectList(HashMap<String, Object> param);

	@Update("update productCart set cnt=${cnt} where productMain_idx=${productMain_idx} and member_idx=${member_idx}")
	int cartUpdate(ProductcartDTO dto);

	@Select("select address from parent_member where idx=#{member_idx}")
	String deliveryDefault(int member_idx);

	//@Insert("insert into delivery values (delivery_seq.nextval, receiverName, receiverPhonenum, #{member_idx}, #{addr1}, #{addr2}, #{addr3}, #{dInfo1})")
	@Insert("insert into delivery (member_idx, addr1, addr2, addr3, dInfo1) values (#{member_idx}, #{addr1}, #{addr2}, #{addr3}, #{dInfo1})")
	int insertAddress(DeliveryDTO dto);

	@Select("select * from delivery where member_idx = #{member_idx}")
	List<DeliveryDTO> addressList(int member_idx);

}
