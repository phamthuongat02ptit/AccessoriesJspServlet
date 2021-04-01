package com.phamthuong.service;

import com.phamthuong.model.UserModel;

public interface IUserService {
	UserModel findUserNameAndPasswordAndStatus(String userName, String password, Integer status);
}
