package com.the.man.product.model.service;

import org.springframework.stereotype.Service;

import com.the.man.product.model.repository.ProductMapper;
import com.the.man.product.model.vo.Product;
import com.the.man.product.model.vo.ProductPhoto;

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

	@Override
	public int insertImg(ProductPhoto productPhoto) {
		// TODO Auto-generated method stub
		return productMapper.insertImg(productPhoto);
	}

}
