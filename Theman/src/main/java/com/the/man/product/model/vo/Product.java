package com.the.man.product.model.vo;

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
	private int productPrice;
	private String productStatus;
	private int categoryNo;

}
