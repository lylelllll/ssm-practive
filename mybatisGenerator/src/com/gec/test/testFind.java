package com.gec.test;

import com.gec.bean.User;
import com.gec.bean.UserExample;
import com.gec.mapper.UserMapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class testFind {
    public static void main(String[] args) throws IOException {
        //1、加载mybatis的全局配置文件
        InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
        //2、生成sqlsessionfactory【会话的工厂类】【用于生成session会话】
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);
        //3、通过sqlsessionfactory来得到生成sqlsession会话对象
        SqlSession session = sqlSessionFactory.openSession();
        //4、通过会话对象得到mapper接口对象
        UserMapper userMapper = session.getMapper(UserMapper.class);
        /* 1，根据主键查询
        User user = userMapper.selectByPrimaryKey(3);
        System.out.println(user);*/
        /* 2,查询所有
        List<User> list = userMapper.selectByExample(new UserExample());
        System.out.println(list);
         */
        //3，根据条件查询
        UserExample example = new UserExample();
        example.createCriteria().andUsernameEqualTo("tom");
        List<User> list = userMapper.selectByExample(example);
        System.out.println(list);
        session.commit();
    }
}
