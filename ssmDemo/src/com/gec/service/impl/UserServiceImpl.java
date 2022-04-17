package com.gec.service.impl;

import com.gec.bean.User;
import com.gec.bean.UserExample;
import com.gec.mapper.UserMapper;
import com.gec.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public User login(String name, String password){
        UserExample example = new UserExample();
        example.createCriteria().andUsernameEqualTo(name).andPasswordEqualTo(password);
        List<User> list = userMapper.selectByExample(example);
        if(list!=null&& !list.isEmpty()){
            return list.get(0);
        }
        return null;
    }
    @Override
    public boolean register(String username, String password){

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        //通过mapper对象执行操作方法
        int result = userMapper.insertSelective(user);
        return result > 0;
    }

    @Override
    public List<User> query(){
        return userMapper.selectByExample(new UserExample());
    }

    @Override
    public User queryId(int id){
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public boolean updateUser(User user){
        return userMapper.updateByPrimaryKeySelective(user) > 0;
    }

    @Override
    public boolean delete(int id){
        return userMapper.deleteByPrimaryKey(id) > 0;
    }
}
