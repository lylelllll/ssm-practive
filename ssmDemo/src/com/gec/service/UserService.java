package com.gec.service;

import com.gec.bean.User;

import java.util.List;

public interface UserService {

    public User login(String name, String password);
    public boolean register(String username,String password);
    public List<User> query();

    public User queryId(int id);

    public boolean updateUser(User user);

    public boolean delete(int id);
}
