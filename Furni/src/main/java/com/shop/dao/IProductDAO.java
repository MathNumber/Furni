package com.shop.dao;

import java.util.List;

import com.shop.model.ProductModel;
import com.shop.paging.Pageble;

public interface IProductDAO extends GenericDAO<ProductModel> {
	ProductModel findOne(Integer id);
	Integer save (ProductModel productModel);
	List<ProductModel> findAll(Integer userid, Pageble pageble);
	int getTotalItem(Integer userid);
}
