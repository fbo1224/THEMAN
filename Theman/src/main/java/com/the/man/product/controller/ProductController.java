package com.the.man.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.the.man.product.model.service.ProductService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ProductController {
	
	
	private ProductService productService;
	
	@GetMapping("padding")
	public String padding() {
		return "product/padding";
	}

}
