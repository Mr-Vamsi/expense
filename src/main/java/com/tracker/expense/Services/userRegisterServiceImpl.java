package com.tracker.expense.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tracker.expense.Entities.userRegister;
import com.tracker.expense.Repositories.userRegisterRepository;

@Service
public class userRegisterServiceImpl implements userRegisterService{

    @Autowired
    private userRegisterRepository repository;


    @Override
    public userRegister saveUser(userRegister userRegister) {

        userRegister register = repository.save(userRegister);
        return register;
    }
    
    

}
