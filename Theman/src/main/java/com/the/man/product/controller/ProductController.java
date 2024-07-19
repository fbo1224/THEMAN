package com.the.man.product.controller;

import org.springframework.stereotype.Controller;

import com.the.man.product.model.service.ProductService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ProductController {
	
	
	private ProductService productService;

}
