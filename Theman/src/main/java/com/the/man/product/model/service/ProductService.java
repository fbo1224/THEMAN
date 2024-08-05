package com.the.man.product.model.service;

import com.the.man.product.model.vo.Product;
import com.the.man.product.model.vo.ProductPhoto;

public interface ProductService {
	
	int insert(Product product);
	
	int insertImg(ProductPhoto productPhoto);

}
