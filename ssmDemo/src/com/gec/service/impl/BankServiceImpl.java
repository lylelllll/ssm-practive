package com.gec.service.impl;

import com.gec.bean.Bank;
import com.gec.bean.BankExample;
import com.gec.mapper.BankMapper;
import com.gec.service.BankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BankServiceImpl implements BankService {
    @Autowired
    BankMapper BankMapper;

    @Override
    public boolean insert(String name, String type){

        Bank Bank = new Bank();
        Bank.setName(name);
        Bank.setType(type);
        //通过mapper对象执行操作方法
        int result = BankMapper.insertSelective(Bank);
        return result > 0;
    }

    @Override
    public List<Bank> query(){
        return BankMapper.selectByExample(new BankExample());
    }

    @Override
    public Bank queryId(int id){
        return BankMapper.selectByPrimaryKey(id);
    }

    @Override
    public boolean updateBank(Bank Bank){
        return BankMapper.updateByPrimaryKeySelective(Bank) > 0;
    }

    @Override
    public boolean delete(int id){
        return BankMapper.deleteByPrimaryKey(id) > 0;
    }
}
