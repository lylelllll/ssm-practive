package com.gec.service;

import com.gec.bean.Bankcard;

import java.util.List;

public interface BankcardService {

    public boolean insert(String name, String type);

    public List<Bankcard> query();

    public Bankcard queryId(int id);

    public boolean updateBankcard(Bankcard Bankcard);

    public boolean delete(int id);
}
