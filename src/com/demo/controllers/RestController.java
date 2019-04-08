package com.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.demo.entity.Member;
import com.demo.services.MemberDetailsServices;



@RequestMapping
public class RestController {

	
	@Autowired
	private MemberDetailsServices memberDetailsServices;
	
	
	@ResponseBody
	@GetMapping("/getDataJson")
	public List<Member> DisplayList(Model model) {

			List<Member> list = memberDetailsServices.getallMember();
//			model.addAttribute("Members",list);
//			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//			String name = auth.getName(); // get logged in user name
//			model.addAttribute("username",name);
			return list;

		
	}
	
	
}
