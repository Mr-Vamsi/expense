package com.tracker.expense.Repositories;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;
import com.tracker.expense.Entities.userRegister;

@Repository
public interface userRegisterRepository extends MongoRepository<userRegister,String>{
    
}
