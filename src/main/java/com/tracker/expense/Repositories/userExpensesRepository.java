package com.tracker.expense.Repositories;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;
import com.tracker.expense.Entities.userExpenses;

@Repository
public interface userExpensesRepository extends MongoRepository<userExpenses,String> {
    
}
