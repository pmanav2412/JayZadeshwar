package com.demo.services;

import java.util.List;

import com.demo.entity.Member;

public interface MemberDetailsServices {
	
	public List<Member> getallMember();
	
	public List<Member> findByEmail(String email);

}
