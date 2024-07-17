package com.the.man.member.model.service;

import org.springframework.stereotype.Service;

import com.the.man.member.model.repository.MemberMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {
	
	private final MemberMapper memberMapper;
	
	
}
