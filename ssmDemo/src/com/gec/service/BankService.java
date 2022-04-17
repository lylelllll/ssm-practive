package com.gec.service;

import com.gec.bean.Bank;

import java.util.List;

public interface BankService {

    public boolean insert(String name, String type);

    public List<Bank> query();

    public Bank queryId(int id);

    public boolean updateBank(Bank Bank);

    public boolean delete(int id);
}
