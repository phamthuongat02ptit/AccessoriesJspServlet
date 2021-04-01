package com.phamthuong.dao;

import com.phamthuong.model.UserModel;

public interface IUserDAO extends GenericDAO<UserModel>{
	UserModel findUserNameAndPasswordAndStatus(String userName, String password, Integer status);
}
