package com.demo.controllers;

import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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



@Controller
public class AppController {
	
	@Autowired
	MemberDetailsServices memberDetailsServices;
	
	
	
///////////
	@RequestMapping("/")
	public String getIndexPage() {
		
		return "index";
	}
	
	
///////////	
	@RequestMapping("/LoginPage")
	public String Login() {
		
		return "Login";
	}
	
	
///////////	
	@RequestMapping("/Login")
	public String Login(@RequestParam(value="error", required=false)String error,@RequestParam(value="logout", required=false)String logout,
			Model model) {
		System.out.println("Hello");
		if(error != null) {
			model.addAttribute("error", "Invalid Username And Password");
		}
		
		if(logout != null) {
			model.addAttribute("msg", "You Have been logged out successfully");
		}
		return "Login";
	}
	
	
///////////
	@GetMapping("/getData")
	public String DisplayList(Model model) {

			List<Member> list = memberDetailsServices.getallMember();
			model.addAttribute("Members",list);
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String name = auth.getName(); // get logged in user name
			model.addAttribute("username",name);
			
			///// one member
			
			return "ZadeshwarList";

	}
	
	
	@ResponseBody
	@GetMapping("/Members")
	public List<Member> DisplayList1(Model model) {

		List<Member> list = memberDetailsServices.getallMember();
		ObjectMapper mapper = new ObjectMapper();
		System.out.println(list.size()+ " kghjg "); 
		mapper.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
		return list;

		
	}
	
	
	
///////////
	@RequestMapping(value="/find", method=RequestMethod.GET)
	public String findMember(Model model)
	{
		return "findMember";
	}
	
	
///////////
	
	@RequestMapping(value="/getData/Member",method=RequestMethod.POST,produces = "application/json")
	public String findByEmail(@RequestParam(value="Email")String email,Model model) {
		List<Member> m = memberDetailsServices.findByEmail(email);
		model.addAttribute("Members",m);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); // get logged in user name
		model.addAttribute("username",name);
		model.addAttribute("u","btn btn-success");
		return "ZadeshwarList";
		
		
		
///     REST WEB SERVICES FOR PERTICULAR MEMBER (JSON)
//		return type for methode
		
//		Member memb = m.get(0);
//		if(memb == null)
//			return new ResponseEntity(HttpStatus.NOT_FOUND);
//			return new ResponseEntity<Member>(memb,HttpStatus.OK);
	}
	
	
	
	
	
	
	

	
	
	
}
