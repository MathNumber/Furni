package com.shop.dao.impl;

import java.util.List;

import com.shop.dao.IOrderDAO;
import com.shop.mapper.OrderMapper;
import com.shop.model.OrderModel;

public class OrderDAO extends AbstractDAO<OrderModel> implements IOrderDAO {

	@Override
	public Integer save(OrderModel orderModel) {
		StringBuilder sb =new StringBuilder("INSERT INTO orders (fullname,country,address,phone,");
		sb.append("email,state,companyname,note,zip) VALUES(?,?,?,?,?,?,?,?,?)");
		return insert(sb.toString(), orderModel.getFullname(),orderModel.getCountry(),
				orderModel.getAddress(),orderModel.getPhone(),orderModel.getEmail(),
				orderModel.getState(),orderModel.getCompanyname(),orderModel.getNote(),
				orderModel.getZip());
	}

	@Override
	public OrderModel findOne(Integer id) {
		String sql = "SELECT * FROM orders WHERE id = ?";
		List<OrderModel> orderModel = query(sql, new OrderMapper(), id);
		return orderModel.isEmpty()?null:orderModel.get(0);
	}

}
