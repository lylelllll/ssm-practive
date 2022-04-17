package com.gec.controller;

import com.gec.bean.Bankcard;
import com.gec.service.BankcardService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class BankcardController {
    @Autowired
    BankcardService BankcardService;



    @RequestMapping("/queryBankcard")
    public String query(@RequestParam(required = false,defaultValue = "1") Integer pageNo, HttpServletRequest request){
        PageHelper.startPage(pageNo,8);
        List<Bankcard> res = BankcardService.query();
        PageInfo pageInfo = new PageInfo(res);
        request.setAttribute("list",res);
        request.setAttribute("pageInfo",pageInfo);
        return "BankcardIndex";
    }
    @RequestMapping("/toUpdateBankcard")
    public String toUpdateBankcard(Integer id,HttpServletRequest request){
        Bankcard Bankcard = BankcardService.queryId(id);
        request.setAttribute("Bankcard",Bankcard);
        return "UpdateBankcard";
    }

    @RequestMapping("/updateBankcard")
    public String updateBankcard(Bankcard Bankcard,HttpServletRequest request){
        boolean res = BankcardService.updateBankcard(Bankcard);
        if(res){
            return "redirect:/queryBankcard";
        }else{
            request.setAttribute("Bankcard",Bankcard);
            return "UpdateBankcard";
        }
    }

    @RequestMapping("/deleteBankcard")
    public String deleteBankcard(int id,HttpServletRequest request){
        BankcardService.delete(id);
        return  "redirect:/queryBankcard";
    }

}
