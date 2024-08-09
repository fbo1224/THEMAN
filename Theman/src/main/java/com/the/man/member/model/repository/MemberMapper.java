package com.the.man.member.model.repository;

import org.apache.ibatis.annotations.Mapper;

import com.the.man.member.model.vo.Member;

@Mapper
public interface MemberMapper {
	
	// 사용자 DB에 있는지 체크
	Member selectUser(Member checkUser);
	
	int checkEmail(String userEmail);
	
	int insertUser(Member member);
	
	int deleteUser(int userNo);
}
