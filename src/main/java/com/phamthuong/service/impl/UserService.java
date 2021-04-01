package com.phamthuong.service.impl;

import javax.inject.Inject;

import com.phamthuong.dao.IUserDAO;
import com.phamthuong.model.UserModel;
import com.phamthuong.service.IUserService;

public class UserService implements IUserService{

	@Inject
	private IUserDAO userDao;
	@Override
	public UserModel findUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
		return userDao.findUserNameAndPasswordAndStatus(userName, password, status);
	}

}
