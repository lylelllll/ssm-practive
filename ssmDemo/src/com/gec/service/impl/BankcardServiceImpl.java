package com.gec.service.impl;

import com.gec.bean.Bankcard;
import com.gec.bean.BankcardExample;
import com.gec.mapper.BankcardMapper;
import com.gec.service.BankcardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BankcardServiceImpl implements BankcardService {
    @Autowired
    BankcardMapper BankcardMapper;

    @Override
    public boolean insert(String cardBank, String cardNum){

        Bankcard Bankcard = new Bankcard();
        Bankcard.setCardbank(cardBank);
        Bankcard.setCardnum(cardNum);
        //通过mapper对象执行操作方法
        int result = BankcardMapper.insertSelective(Bankcard);
        return result > 0;
    }

    @Override
    public List<Bankcard> query(){
        return BankcardMapper.selectByExample(new BankcardExample());
    }

    @Override
    public Bankcard queryId(int id){
        return BankcardMapper.selectByPrimaryKey(id);
    }

    @Override
    public boolean updateBankcard(Bankcard Bankcard){
        return BankcardMapper.updateByPrimaryKeySelective(Bankcard) > 0;
    }

    @Override
    public boolean delete(int id){
        return BankcardMapper.deleteByPrimaryKey(id) > 0;
    }
}
