package com.the.man.product.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.the.man.common.model.vo.PageInfo;
import com.the.man.product.model.repository.ProductMapper;
import com.the.man.product.model.vo.Category;
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
	public int selectListCount(int categoryNo) {
		// TODO Auto-generated method stub
		return productMapper.selectListCount(categoryNo);
	}

	@Override
	public List<Product> allProduct(PageInfo pi, int categoryNo) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		
		// TODO Auto-generated method stub
		return productMapper.allProduct(categoryNo,rowBounds);
	}

	@Override
	public List<Category> allCategory() {
		// TODO Auto-generated method stub
		return productMapper.allCategory();
	}

	@Override
	public Product selectProduct(int productNo) {
		// TODO Auto-generated method stub
		return productMapper.selectProduct(productNo);
	}

	@Override
	public List<ProductPhoto> selectProductPhotos(int productNo) {
		// TODO Auto-generated method stub
		return productMapper.selectProductPhotos(productNo);
	}

	@Override
	public int increaseCount(int productNo) {
		// TODO Auto-generated method stub
		return productMapper.increaseCount(productNo);
	}

}
