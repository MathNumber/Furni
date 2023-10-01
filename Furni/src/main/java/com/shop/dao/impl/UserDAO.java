package com.shop.dao.impl;

import java.util.List;

import com.shop.dao.IUserDAO;
import com.shop.mapper.UserMapper;
import com.shop.model.UserModel;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO  {

	@Override
	public List<UserModel> findAll() {
		String sql = "SELECT * FROM user";
		return query(sql, new UserMapper());
	}

	@Override
	public UserModel findOne(Integer id) {
		String sql = "SELECT * FROM user WHERE id=?";
		List<UserModel> userModel= query(sql, new UserMapper(), id);
		return userModel.isEmpty()?null:userModel.get(0);
	}

	@Override
	public Integer save(UserModel userModel) {
		StringBuilder sb = new StringBuilder("INSERT INTO user (email,password,username)");
		sb.append(" VALUES(?,?,?)");
		return insert(sb.toString(), userModel.getEmail(),
				userModel.getPassword(),userModel.getUsername());
	}

	@Override
	public UserModel findOneByEmailAndPassword(String email, String password) {
		String sql="SELECT * FROM user WHERE email=? AND password=?";
		List<UserModel> userModel= query(sql, new UserMapper(), email,password);
		return userModel.isEmpty()?null:userModel.get(0);
	}

	@Override
	public UserModel findOneByEmail(String email) {
		String sql = "SELECT * FROM user WHERE email=?";
		List<UserModel> userModel= query(sql, new UserMapper(), email);
		return userModel.isEmpty()?null:userModel.get(0);
	}

}
