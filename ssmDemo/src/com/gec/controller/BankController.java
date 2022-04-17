package com.gec.controller;

import com.gec.bean.Bank;
import com.gec.service.BankService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class BankController {
    @Autowired
    BankService BankService;

    @RequestMapping("/insertBank")
    public String register(String Bankname,String password,HttpServletRequest request){
        boolean res = BankService.insert(Bankname,password);
        if(res){
            return "login";
        }else{
            return "register";
        }
    }

    @RequestMapping("/queryBank")
    public String query(@RequestParam(required = false,defaultValue = "1") Integer pageNo, HttpServletRequest request){
        PageHelper.startPage(pageNo,8);
        List<Bank> res = BankService.query();
        PageInfo pageInfo = new PageInfo(res);
        request.setAttribute("list",res);
        request.setAttribute("pageInfo",pageInfo);
        return "BankIndex";
    }
    @RequestMapping("/toUpdateBank")
    public String toUpdateBank(Integer id,HttpServletRequest request){
        Bank Bank = BankService.queryId(id);
        request.setAttribute("bank",Bank);
        return "UpdateBank";
    }

    @RequestMapping("/updateBank")
    public String updateBank(Bank Bank,HttpServletRequest request){
        boolean res = BankService.updateBank(Bank);
        if(res){
            return "redirect:/queryBank";
        }else{
            request.setAttribute("Bank",Bank);
            return "UpdateBank";
        }
    }

    @RequestMapping("/deleteBank")
    public String deleteBank(int id,HttpServletRequest request){
        BankService.delete(id);
        return  "redirect:/queryBank";
    }

}
