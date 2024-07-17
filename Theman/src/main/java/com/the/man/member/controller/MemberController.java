package com.the.man.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.the.man.member.model.service.MemberService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MemberController {
	
	//private final MemberService memberService;
	
	// 로그인 페이지 이동
	@GetMapping("loginPage")
	public String loginPage() {
		return "member/login";
	}
	
	
	
}
