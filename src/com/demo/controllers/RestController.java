package com.demo.controllers;

import java.lang.invoke.MethodType;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.demo.entity.Member;
import com.demo.services.MemberDetailsServices;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;




@RequestMapping
public class RestController {

	
	@Autowired
	private MemberDetailsServices memberDetailsServices;
	
//	
//	@ResponseBody
//	@GetMapping("/getJsonData")
//	public List<Member> DisplayList(Model model) {
//
//		List<Member> list = memberDetailsServices.getallMember();
//		ObjectMapper mapper = new ObjectMapper();
//		System.out.println(list.size()+ " kghjg "); 
//		mapper.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
//		return list;
//
//		
//	}
	
//	@ResponseBody
//	@RequestMapping(value="/Member/{email}",method=RequestMethod.POST)
//	public ResponseEntity<Member> findByEmail(String email) {
//		
//		String email = member.getEmail();
//		List<Member> m = memberDetailsServices.findByEmail(email);
//		Member memb = m.get(0);
//		ObjectMapper mapper = new ObjectMapper();
//		mapper.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
//		
//		if(memb == null)
//			return new ResponseEntity(HttpStatus.NOT_FOUND);
//		return new ResponseEntity<Member>(memb,HttpStatus.OK);
//	}

	
	}
	

