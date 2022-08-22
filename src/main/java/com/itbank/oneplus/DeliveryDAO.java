package com.itbank.oneplus;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Repository
public interface DeliveryDAO {

	@Select("select * from delivery where dCode=#{dCode}")
	DeliveryDTO selectDeliveryOne(HashMap<String, String> param);

	//@Insert("insert into delivery values (delivery_seq.nextval, receiverName, receiverPhonenum, #{member_idx}, #{addr1}, #{addr2}, #{addr3}, #{dInfo1})")
	@Insert("insert into delivery (member_idx, addr1, addr2, addr3, dInfo1) values (#{member_idx}, #{addr1}, #{addr2}, #{addr3}, #{dInfo1})")
	int insertAddress(DeliveryDTO dto);

	@Select("select * from delivery where member_idx = #{member_idx}")
	List<DeliveryDTO> addressList(int member_idx);

	@Select("select * from delivery where member_idx=#{member_idx} and dCode=#{dCode}")
	DeliveryDTO addressSelectOne(HashMap<String, String> param);

	//@Update("update delivery set receiverName=#{receiverName}, receiverPhonenum=#{receiverPhonenum}, addr1=#{addr1}, addr2=#{addr2}, addr3=#{addr3}, dInfo1=#{dInfo1} where member_idx=#{member_idx} and dCode=#{dCode}")
	@Update("update delivery set addr1=#{addr1}, addr2=#{addr2}, addr3=#{addr3}, dInfo1=#{dInfo1} where member_idx=#{member_idx} and dCode=#{dCode}")
	int updateAddress(DeliveryDTO dto);

	@Delete("delete delivery where member_idx=#{member_idx} and dCode=#{dCode}")
	int deleteAddress(HashMap<String, String> param);

}
