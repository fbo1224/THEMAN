package com.the.man.member.model.service;

import org.springframework.stereotype.Service;

import com.the.man.member.model.repository.MemberMapper;
import com.the.man.member.model.vo.Member;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {
	
	private final MemberMapper memberMapper;

	@Override
	public Member selectUser(Member checkUser) {
		return memberMapper.selectUser(checkUser);
	}

	@Override
	public int checkEmail(String userEmail) {
		return memberMapper.checkEmail(userEmail);
	}

	@Override
	public int insertUser(Member member) {
		return memberMapper.insertUser(member);
	}

	@Override
	public int deleteUser(int userNo) {
		return memberMapper.deleteUser(userNo);
	}
	
	
}
