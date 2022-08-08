package com.itbank.oneplus;

import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

@Repository
public interface IntegrationJoinDAO {
	
	@Insert("insert into integration_member (idx, name, birth, phonenum)" + 
			"values (MEMBER_SEQ.nextval, #{name}, #{birth}, #{phonenum})")
	int insert(IntegrationMemberDTO dto);

}
