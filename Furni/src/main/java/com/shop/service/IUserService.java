package com.shop.service;

import com.shop.model.UserModel;

public interface IUserService {
	UserModel findOneByEmailAndPassword(String email,String password);
	UserModel save (UserModel userModel);
	boolean findOneByEmail(String email);
}
