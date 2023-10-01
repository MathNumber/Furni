package com.shop.service;

import java.util.List;

import com.shop.model.ProductModel;
import com.shop.paging.Pageble;

public interface IProductService {
	ProductModel save (ProductModel model);
	List<ProductModel> findAll(Integer userid, Pageble pageble);
	int getTotalItem(Integer userid);
}
