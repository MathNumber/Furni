package com.shop.service.impl;

import java.sql.Timestamp;

import javax.inject.Inject;

import com.shop.dao.IUserDAO;
import com.shop.model.UserModel;
import com.shop.service.IUserService;

public class UserService implements IUserService {
	
	@Inject
	public IUserDAO userDAO;

	@Override
	public UserModel findOneByEmailAndPassword(String email, String password) {
		return userDAO.findOneByEmailAndPassword(email, password);
	}

	@Override
	public UserModel save(UserModel userModel) {
		userModel.setCreateddate(new Timestamp(System.currentTimeMillis()));
		Integer newId= userDAO.save(userModel);
		return userDAO.findOne(newId);
	}

	@Override
	public boolean findOneByEmail(String email) {
		if(userDAO.findOneByEmail(email)==null) {
			return false;
		}else {
			return true;
		}
	}

}
