package com.gec.Controller;

import com.bean.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {
    /*不跳转的请求处理
    @RequestMapping("/login")
    @ResponseBody
    public String login(String name,String password){
        if(name.equals("admin")&&password.equals("123456")){
            return "login success";
        }else{
            return "login failed";
        }
    }*/
    /*跳转页面的请求处理
    @RequestMapping("/login")
    public String login(String name,String password){
        if(name.equals("admin")&&password.equals("123456")){
            return "redirect:/index.html";//重定向不走视图解释器
        }else{
            return "login";//在spingMVC.xml中可以看到视图解释器自动添加了前后缀->login.jsp
        }
    }*/
    @RequestMapping("/login")
    public String login(User user){
        if(user.getName().equals("admin")&&user.getPassword().equals("123456")){
            return "redirect:/index.html";//重定向不走视图解释器
        }else{
            return "login";//在spingMVC.xml中可以看到视图解释器自动添加了前后缀->login.jsp
        }
    }

}
