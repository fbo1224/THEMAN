package com.the.man.product.model.repository;

import org.apache.ibatis.annotations.Mapper;

import com.the.man.product.model.vo.Product;
import com.the.man.product.model.vo.ProductPhoto;

@Mapper
public interface ProductMapper {
	
	int insert(Product product);

	int insertImg(ProductPhoto productPhoto);

}
