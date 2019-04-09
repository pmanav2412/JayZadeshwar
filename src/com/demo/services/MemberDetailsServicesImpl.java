package com.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.demo.DAO.MemberDetailsDAO;
import com.demo.entity.Member;

@Service
public class MemberDetailsServicesImpl implements MemberDetailsServices {

	@Autowired
	MemberDetailsDAO memberDetailsDAO;
	
	
	@Override
	@Transactional
	public List<Member> getallMember() {
		List<Member> memberList = memberDetailsDAO.getallMember();
		return memberList;
	}


	@Override
	@Transactional
	public List<Member> findByEmail(String email) {
		List<Member> member = memberDetailsDAO.findByEmail(email);
		return member;
	}

}
