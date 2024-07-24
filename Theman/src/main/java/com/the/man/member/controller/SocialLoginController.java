package com.the.man.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.the.man.member.model.service.KakaoService;
import com.the.man.member.model.service.MemberService;
import com.the.man.member.model.vo.Member;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class SocialLoginController {
	
	
	private final KakaoService kakaoService;
	private final MemberService memberService;
	
	@GetMapping("kakao")
	public String kakaoLogin() {
		return "redirect:/";
	}
	
	// Redirect URI
	@GetMapping("code")
	public ModelAndView code(String code, HttpSession session, ModelAndView mv) throws IOException, ParseException {
		
		String accessToken = kakaoService.getToken(code);
		
		Member checkUser = kakaoService.getUserInfo(accessToken);
		
		System.out.println("checkUser : " + checkUser);
		
		Member loginUser = memberService.selectUser(checkUser);
		
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("main");
		} else {
			// 추가 정보 받아서 같이 insert하기
			session.setAttribute("checkUser", checkUser);
			mv.setViewName("memberJoin");
		}
		return mv;
	}
	
	
}
