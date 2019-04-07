package com.demo.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.entity.Member;


@Repository
public class MemberDetailsDAOImpl implements MemberDetailsDAO {

	
	@Autowired
	SessionFactory sessionFactory;
	
	
	@Override
	public List<Member> getallMember() {
		Session session = sessionFactory.getCurrentSession();
		List<Member> memberList = new ArrayList<Member>();
		try {
		Query query = session.createQuery("From Member");
		
		memberList = query.list();
		}
		catch(Exception e) {
			e.printStackTrace();
		
		}
		return memberList;
	}
	
	

}
