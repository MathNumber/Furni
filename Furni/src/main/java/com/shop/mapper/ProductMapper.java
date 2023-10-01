package com.shop.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.shop.model.ProductModel;

public class ProductMapper implements RowMapper<ProductModel> {

	@Override
	public ProductModel mapRow(ResultSet rs) {
		ProductModel productModel=new ProductModel();
		try { 
			productModel.setId(rs.getInt("id"));
			productModel.setProductname(rs.getString("productname"));
			productModel.setPrice(rs.getDouble("price"));
			productModel.setAmount(rs.getInt("amount"));
			productModel.setOrderid(rs.getInt("orderid"));
			productModel.setUserid(rs.getInt("userid"));
			return productModel;
		} catch (SQLException e) {
			System.err.println(e.getMessage());
		}
		return null;
	}

}
