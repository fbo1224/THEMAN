package com.the.man.product.model.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.the.man.product.model.vo.Category;
import com.the.man.product.model.vo.Product;
import com.the.man.product.model.vo.ProductPhoto;

@Mapper
public interface ProductMapper {
	
	int insert(Product product);

	int insertImg(ProductPhoto productPhoto);
	
	int selectListCount(int categoryNo);
	
	List<Product> allProduct(int categoryNo, RowBounds rowBounds);
	
	List<Category> allCategory();

}
