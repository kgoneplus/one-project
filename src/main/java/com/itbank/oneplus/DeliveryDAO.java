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

	@Insert("insert into delivery (dCode, receiverName, receiverPhonenum, member_idx, address, isDefault) "
			+ "values (delivery_seq.nextval, #{receiverName}, #{receiverPhonenum}, #{member_idx}, #{address}, 'n')")
	int insertAddress(DeliveryDTO dto);

	@Select("select * from delivery where member_idx = #{member_idx}")
	List<DeliveryDTO> addressList(int member_idx);

	@Select("select * from delivery where member_idx=#{member_idx} and dCode=#{dCode}")
	DeliveryDTO addressSelectOne(HashMap<String, String> param);

	@Update("update delivery set address=#{address} where member_idx=#{member_idx} and dCode=#{dCode}")
	int updateAddress(DeliveryDTO dto);

	@Delete("delete delivery where member_idx=#{member_idx} and dCode=#{dCode}")
	int deleteAddress(HashMap<String, String> param);
	
	@Select("select * from delivery where isDefault='y' and member_idx=#{member_idx}")
	DeliveryDTO getdefaultAddress(int member_idx);

	@Update("update delivery set isDefault='y' where dCode=${dCode_new}")
	int updateDefaultAddress(HashMap<String, String> param);

	@Update("update delivery set isDefault='n' where dCode=${dCode_old}")
	int eraseDefaultAddress(HashMap<String, String> param);

	
//	@Insert("insert into delivery (dCode, receiverName, receiverPhonenum, member_idx, addr1, addr2, addr3, addr4, isDefault) "
//			+ "values (delivery_seq.nextval, #{receiverName}, #{receiverPhonenum}, #{member_idx}, #{addr1}, #{addr2}, #{addr3}, #{addr4}, 'y')")
//	int insertDefaultAddress(DeliveryDTO insertdto);
}
