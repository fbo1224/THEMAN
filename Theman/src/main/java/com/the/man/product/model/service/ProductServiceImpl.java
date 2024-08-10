package com.the.man.product.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.the.man.common.model.vo.PageInfo;
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

	@Override
	public int selectListCount() {
		// TODO Auto-generated method stub
		return productMapper.selectListCount();
	}

	@Override
	public List<Product> allProduct(PageInfo pi) {
		// TODO Auto-generated method stub
		return productMapper.allProduct(pi);
	}

}
