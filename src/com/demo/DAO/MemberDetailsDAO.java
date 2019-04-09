package com.demo.DAO;

import java.util.List;

import com.demo.entity.Member;

public interface MemberDetailsDAO {

	
	public List<Member> getallMember();

	public List<Member> findByEmail(String email);
	
}
