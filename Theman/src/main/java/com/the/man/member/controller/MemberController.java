package com.the.man.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.the.man.member.model.service.MemberService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MemberController {
	
	private final MemberService memberService;
	
	@GetMapping("emailCheck.do")
	public String checkEmail(String userEmail) {
		
		if(memberService.checkEmail(userEmail) > 0){
			System.out.println("이메일 중복");
			return "NNNNN";
		} else {
			System.out.println("이메일 중복안됨");
			return "NNNNY";
		}
		
		
		
	}
	
	
}
