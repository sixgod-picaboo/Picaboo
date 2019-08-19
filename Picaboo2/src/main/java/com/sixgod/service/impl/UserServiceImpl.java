package com.sixgod.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sixgod.dao.UserDao;
import com.sixgod.pojo.User;
import com.sixgod.service.UserService;


@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public User queryUserByID(String user_id, String user_pwd) {
		return userDao.queryUserByID(user_id, user_pwd);
	}

	

}
