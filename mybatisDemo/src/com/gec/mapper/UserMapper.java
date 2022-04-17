package com.gec.mapper;

import com.gec.bean.User;

import java.util.List;

public interface UserMapper {
    public int insertUser(User user);
    public int updateUser(User user);
    public int deleteUser(int a);
    public List<User> selectUser();
    public List<User> selectUserThroughResultMap();
}
