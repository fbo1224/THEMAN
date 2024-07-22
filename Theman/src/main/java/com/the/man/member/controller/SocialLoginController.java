package com.the.man.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.the.man.member.model.service.KakaoService;
import com.the.man.member.model.service.MemberService;
import com.the.man.member.model.vo.SocialMember;

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
		
		SocialMember loginUser = kakaoService.getUserInfo(accessToken);
		
		memberService.selectUser(loginUser);
		
		System.out.println(loginUser);
		
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("redirect:kakao");
		} else {
			mv.addObject("alertMsg", "로그인에 실패하였습니다!").setViewName("main");
		}
		
		return mv;
	}
	
	
}
