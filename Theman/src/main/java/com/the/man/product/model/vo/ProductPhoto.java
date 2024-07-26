package com.the.man.product.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class ProductPhoto{

	private int productPhotoNo;
	private int productNo;
	private String originName;
	private String changeName;
	private int fileLevel;
	
	
}
