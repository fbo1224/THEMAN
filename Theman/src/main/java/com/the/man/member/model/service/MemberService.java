package com.the.man.member.model.service;

import com.the.man.member.model.vo.SocialMember;

public interface MemberService {
	
	SocialMember selectUser(SocialMember loginUser);
	
	
}
