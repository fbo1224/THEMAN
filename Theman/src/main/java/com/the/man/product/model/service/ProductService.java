package com.the.man.product.model.service;

import java.util.List;

import com.the.man.common.model.vo.PageInfo;
import com.the.man.product.model.vo.Category;
import com.the.man.product.model.vo.Product;
import com.the.man.product.model.vo.ProductPhoto;

public interface ProductService {
	
	int insert(Product product);
	
	int insertImg(ProductPhoto productPhoto);
	
	int selectListCount(int categoryNo);
	
	
	List<Product> allProduct(PageInfo pi, int categoryNo);
	
	List<Category> allCategory();


}
