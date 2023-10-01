package com.shop.dao;

import com.shop.model.OrderModel;

public interface IOrderDAO extends GenericDAO<OrderModel> {
	Integer save(OrderModel orderModel);
	OrderModel findOne(Integer id);
}
