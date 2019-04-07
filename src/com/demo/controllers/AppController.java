package com.demo.controllers;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.entity.Member;
import com.demo.services.MemberDetailsServices;



@Controller
public class AppController {
	
	@Autowired
	MemberDetailsServices memberDetailsServices;
	
	@RequestMapping("/")
	public String getIndexPage() {
		return "index";
	}

	@GetMapping("/getData")
	public String DisplayList(Model model) {

			List<Member> list = memberDetailsServices.getallMember();
			model.addAttribute("Members",list);
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String name = auth.getName(); // get logged in user name
			model.addAttribute("username",name);
			return "ZadeshwarList";

		
	}
	@RequestMapping("/LoginPage")
	public String Login() {
		
		return "Login";
	}
	
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
	
}
