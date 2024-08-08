package com.the.man.member.model.service;

import com.the.man.member.model.vo.Member;

public interface MemberService {
	
	Member selectUser(Member checkUser);

	int checkEmail(String userEmail);
	
	int insertUser(Member member);
	
	int deleteUser(int userNo);
	
}
