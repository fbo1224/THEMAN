package com.the.man.product.model.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Product {
	
	private int productNo;
	private String productName;
	private String productContent;
	private String createDate;
	private int productPrice;
	private String productStatus;
	private int categoryNo;
	
	private int count;
	private int userNo;
	
	private String changeName;
	private List<ProductPhoto> productPhotos;

}
