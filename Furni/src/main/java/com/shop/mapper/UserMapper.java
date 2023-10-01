package com.shop.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.shop.model.UserModel;

public class UserMapper implements RowMapper<UserModel> {

	@Override
	public UserModel mapRow(ResultSet rs) {
		UserModel userModel=new UserModel();
		try {
			userModel.setId(rs.getInt("id"));
			userModel.setUsername(rs.getString("username"));
			userModel.setPassword(rs.getString("password"));
			userModel.setEmail(rs.getString("email"));
			userModel.setCreateddate(rs.getTimestamp("createddate"));
			return userModel;
		} catch (SQLException e) {
			System.err.println(e.getMessage());
		}
		return null;
	}	
}
