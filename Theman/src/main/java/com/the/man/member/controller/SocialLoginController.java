package com.the.man.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SocialLoginController {
	
	
	@GetMapping("kakao")
	public String loginPage() {
		return "kakao-login";
	}
	
	// Redirect URI
	@GetMapping("code")
	public String code() {
		return "redirect:kakao";
	}
	
	
}
