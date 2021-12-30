package com.mouli.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.mouli.beans.User;
import com.mouli.repos.UserRepository;

@Controller
public class LoginController {
	@Autowired
	private UserRepository userrep;
	
	@GetMapping("/login")
	public String login() {
		System.out.println("In login");
		return "login";
	}
	
	
	@PostMapping("/login")
	public String loginUser(@ModelAttribute("username") String username,@ModelAttribute("password") String password,Model model) {
		User user = userrep.findByUsername(username);
		if(user == null) {
			model.addAttribute("msg","No user found with the provided username. Please register !");
			return "register";
		}
		
		if(user.getPassword() != password) {
			model.addAttribute("msg","Invalid Password! Please provide a correct password !");
			return "login";
		}
		model.addAttribute("LoggedInUser",user);
		
		return "login";
	}
}
