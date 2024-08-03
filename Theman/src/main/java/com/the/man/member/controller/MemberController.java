package com.the.man.member.controller;

import java.text.DecimalFormat;
import java.text.Format;
import java.util.Random;

import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
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
	private final JavaMailSender sender;
	
	@ResponseBody
	@GetMapping("emailCheck.do")
	public String checkEmail(String userEmail) {
		
		if(memberService.checkEmail(userEmail) > 0){
			return "NNNNN";
		} else {
			return "NNNNY";
		}
	}
	
	@ResponseBody
	@PostMapping("sendMail")
	public String sendMail(String email, HttpServletRequest request) throws MessagingException{
		
		Random r = new Random();
		int i = r.nextInt(10000);
		Format f = new DecimalFormat("0000");
		String code = f.format(i);
		
		// MimeMessage
		MimeMessage message = sender.createMimeMessage();
		
		MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
		
		String to = email;
		
		helper.setTo(to);
		helper.setSubject("THEMAN에서 보낸 인증번호입니다.");
		helper.setText("인증번호 : " + code);
		
		sender.send(message);
		
		return code;
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
