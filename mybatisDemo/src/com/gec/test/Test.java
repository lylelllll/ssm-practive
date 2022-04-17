package com.gec.test;

import com.gec.bean.User;
import com.gec.mapper.UserMapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class Test {

    public static void main(String[] args) throws IOException {
        //1、加载mybatis的全局配置文件
        InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
        //2、生成sqlsessionfactory【会话的工厂类】【用于生成session会话】
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);
        //3、通过sqlsessionfactory来得到生成sqlsession会话对象
        SqlSession session = sqlSessionFactory.openSession();
        //4、通过会话对象得到mapper接口对象
        UserMapper userMapper = session.getMapper(UserMapper.class);

        //User user = new User();
        //user.setUsername("tom");
        //user.setPassword("123456");
        //通过mapper对象执行操作方法
        //int result = userMapper.insertUser(user);
        //System.out.println(result);
        //添加删除修改要提交事务
        List<User> list = userMapper.selectUser();
        for(User user: list){
            System.out.println(user);
        }
        List<User> list2 = userMapper.selectUserThroughResultMap();
        for(User user: list2){
            System.out.println(user);
        }
        session.commit();
    }

}