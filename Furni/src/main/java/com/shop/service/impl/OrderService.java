package com.shop.service.impl;

import javax.inject.Inject;

import com.shop.dao.IOrderDAO;
import com.shop.model.OrderModel;
import com.shop.service.IOrderService;

public class OrderService implements IOrderService {
	
	@Inject
	public IOrderDAO orderDAO;

	@Override
	public OrderModel save(OrderModel orderModel) {
		Integer newId=orderDAO.save(orderModel);
		orderModel.setId(newId);
		return orderDAO.findOne(newId);
	}

}
