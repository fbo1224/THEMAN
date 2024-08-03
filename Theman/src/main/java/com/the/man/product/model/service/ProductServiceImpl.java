package com.the.man.product.model.service;

import org.springframework.stereotype.Service;

import com.the.man.product.model.repository.ProductMapper;
import com.the.man.product.model.vo.Product;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService{
	
	private final ProductMapper productMapper;

	@Override
	public int insert(Product product) {
		// TODO Auto-generated method stub
		return productMapper.insert(product);
	}

}
