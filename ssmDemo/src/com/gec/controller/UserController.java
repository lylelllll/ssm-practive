package com.gec.controller;

import com.gec.bean.User;
import com.gec.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    UserService userService;
    @RequestMapping("/login")
    public String login(String username,String password,HttpServletRequest request){
        User user = userService.login(username,password);
        if(user!=null){
            return "index";
        }else{
            //把信息保存在请求作用域中，目的给jsp页面获取并显示
            request.setAttribute("username",username);
            request.setAttribute("password",password);
            request.setAttribute("message","用户名或密码错误");
            return "login";
        }
    }
    @RequestMapping("/register")
    public String register(String username,String password,HttpServletRequest request){
        boolean res = userService.register(username,password);
        if(res){
            return "login";
        }else{
            return "register";
        }
    }

    @RequestMapping("/queryUser")
    public String query(@RequestParam(required = false,defaultValue = "1") Integer pageNo, HttpServletRequest request){
        PageHelper.startPage(pageNo,8);
        List<User> res = userService.query();
        PageInfo pageInfo = new PageInfo(res);
        request.setAttribute("list",res);
        request.setAttribute("pageInfo",pageInfo);
        return "UserIndex";
    }
    @RequestMapping("/toUpdateUser")
    public String toUpdateUser(Integer id,HttpServletRequest request){
        User user = userService.queryId(id);
        request.setAttribute("user",user);
        return "UpdateUser";
    }

    @RequestMapping("/updateUser")
    public String updateUser(User user,HttpServletRequest request){
        boolean res = userService.updateUser(user);
        if(res){
            return "redirect:/queryUser";
        }else{
            request.setAttribute("user",user);
            return "UpdateUser";
        }
    }

    @RequestMapping("/deleteUser")
    public String deleteUser(int id,HttpServletRequest request){
        userService.delete(id);
        return  "redirect:/queryUser";
    }

}
