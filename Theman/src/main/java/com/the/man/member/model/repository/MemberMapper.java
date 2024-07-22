package com.the.man.member.model.repository;

import org.apache.ibatis.annotations.Mapper;

import com.the.man.member.model.vo.SocialMember;

@Mapper
public interface MemberMapper {
	
	SocialMember selectUser(SocialMember loginUser);
	
	
}
