package com.shop.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.shop.model.OrderModel;

public class OrderMapper implements RowMapper<OrderModel> {

	@Override
	public OrderModel mapRow(ResultSet rs) {
		OrderModel orderModel = new OrderModel();
		try {
			orderModel.setId(rs.getInt("id"));
			orderModel.setFullname(rs.getString("fullname"));
			orderModel.setCountry(rs.getString("country"));
			orderModel.setCompanyname(rs.getString("companyname"));
			orderModel.setState(rs.getString("state"));
			orderModel.setPhone(rs.getInt("phone"));
			orderModel.setZip(rs.getInt("zip"));
			orderModel.setNote(rs.getString("note"));
			orderModel.setEmail(rs.getString("email"));
			orderModel.setAddress(rs.getString("address"));
			orderModel.setCreatedby(rs.getString("createdby"));
			orderModel.setCreateddate(rs.getTimestamp("createddate"));
			if (orderModel.getModifiedby()!=null) {
				orderModel.setModifiedby(rs.getString("modifiedby"));
			}
			if (orderModel.getModifieddate()!=null) {
				orderModel.setModifieddate(rs.getTimestamp("modifieddate"));
			}
			return orderModel;
		} catch (SQLException e) {
			System.err.println(e.getMessage());
		}
		return null;
	}

}
