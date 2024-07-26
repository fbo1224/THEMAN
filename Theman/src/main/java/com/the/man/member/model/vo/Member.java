package com.the.man.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@Getter
@Setter
@NoArgsConstructor
@ToString
public class Member {
	
	private int userNo;
	private String socialId;
	private String userName;
	private String userNickname;
	private String userEmail;
	private String userPhone;
	private String userStatus;
	private String userArea; //지역
	private String userProfile;
	
}
