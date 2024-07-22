package com.the.man.member.controller;

import java.io.IOException;

import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.the.man.member.model.service.KakaoService;
import com.the.man.member.model.vo.SocialMember;

@Controller
public class SocialLoginController {
	
	@Autowired
	KakaoService kakaoService;
	
	@GetMapping("kakao")
	public String kakaoLogin() {
		return "redirect:/";
	}
	
	// Redirect URI
	@GetMapping("code")
	public String code(String code) throws IOException, ParseException {
		
		String accessToken = kakaoService.getToken(code);
		
		SocialMember sm = kakaoService.getUserInfo(accessToken);
		
		
		
		return "redirect:kakao";
	}
	
	
}
