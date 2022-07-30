package com.itbank.integration_member;

import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

@Repository
public interface IntegrationJoinDAO {
	
	@Insert("insert into integration_member (idx, name, birth, ponenum)" + 
			"values (MEMBER_SEQ.nextval, #{name}, #{birth}, #{ponenum})")
	int insert(IntegrationMemberDTO dto);

}
