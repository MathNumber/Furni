package com.shop.dao;

import java.util.List;

import com.shop.model.UserModel;

public interface IUserDAO extends GenericDAO<UserModel> {
	List<UserModel> findAll();
	UserModel findOne(Integer id);
	Integer save(UserModel userModel);
	UserModel findOneByEmailAndPassword(String email,String password);
	UserModel findOneByEmail(String email);
}
