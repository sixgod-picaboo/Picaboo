package com.sixgod.service;

import com.sixgod.pojo.User;

public interface UserService {
	User queryUserByID(String user_id,String user_pwd);
}
