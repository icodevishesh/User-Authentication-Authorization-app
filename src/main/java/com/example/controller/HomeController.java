package com.example.controller;

import org.springframework.ui.Model;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	@GetMapping("/login" )
    public String login() {
        return "login"; 
    }
	
	
    @GetMapping("/profile")
    public String showProfile(Model model) {
    	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = authentication.getName(); // Gets the logged-in username

        model.addAttribute("username", username);
        return "profile";  
    }
    
    @GetMapping("/register")
    public String showRegistrationForm() {
        return "register";  
    }

}
