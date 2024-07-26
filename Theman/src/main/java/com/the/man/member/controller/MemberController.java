package com.the.man.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.the.man.member.model.service.MemberService;
import com.the.man.member.model.vo.Member;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MemberController {
	
	private final MemberService memberService;
	
	@ResponseBody
	@GetMapping("emailCheck.do")
	public String checkEmail(String userEmail) {
		
		if(memberService.checkEmail(userEmail) > 0){
			return "NNNNN";
		} else {
			return "NNNNY";
		}
	}
	
	@PostMapping("insert.user")
	public String insertUser(Member member, HttpSession session) {
		
		if(memberService.insertUser(member) > 0) {
			session.setAttribute("alertMsg", "회원가입 성공");
			session.setAttribute("loginUser", member);
		} else {
			session.setAttribute("alertMsg", "회원가입에 실패하였습니다. 다시 시도해 주세요!");
		}
		
		return "main";
	}
	
	// 마이페이지 이동
	@GetMapping("myPage")
	public String myPage() {
		return "member/myPage";
	}
	
	// 로그아웃
	@GetMapping("logout")
	public String logOut(HttpSession session) {
		session.removeAttribute("loginUser");
		return "main";
	}
	
}
