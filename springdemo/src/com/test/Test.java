package com.test;

import com.bean.User;
import javafx.application.Application;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
    public static void main(String[] args){
        ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
        User user = (User) context.getBean("nowUser");
        System.out.println(user);

    }
}
