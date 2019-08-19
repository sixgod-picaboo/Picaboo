package com.sixgod.dao;


import org.apache.ibatis.annotations.Param;

import com.sixgod.pojo.User;

public interface UserDao {

	User queryUserByID(@Param("user_id") String user_id,@Param("user_pwd")String user_pwd);

}
