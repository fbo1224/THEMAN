package com.the.man.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SocialLoginController {
	
	@GetMapping("login")
	public String login() {
		return "member/kakao-login";
	}/*
	
	@GetMapping("kakao")
	public String kakaoLogin() {
		return "member/kakao-login";
	}*/
	
	// Redirect URI
	@GetMapping("code")
	public String code() {
		return "redirect:kakao";
	}
	
	
}
