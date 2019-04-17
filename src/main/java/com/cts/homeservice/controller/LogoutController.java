package com.cts.homeservice.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LogoutController {

	@GetMapping("logout.html")
	public String logout(HttpSession session) {
		
		session.invalidate();
		return "index";
		
	}
	
}
