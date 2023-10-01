package com.shop.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.shop.dao.IProductDAO;
import com.shop.model.ProductModel;
import com.shop.paging.Pageble;
import com.shop.service.IProductService;

public class ProductService implements IProductService {
	
	@Inject
	public IProductDAO productDAO;

	@Override
	public ProductModel save(ProductModel model) {
		Integer newId = productDAO.save(model);
		return productDAO.findOne(newId);
	}

	@Override
	public List<ProductModel> findAll(Integer userid,Pageble pageble) {
		return productDAO.findAll(userid,pageble);
	}

	@Override
	public int getTotalItem(Integer userid) {
		return productDAO.getTotalItem(userid);
	}

}
