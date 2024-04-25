package com.tracker.expense.Controllers;

import org.springframework.web.bind.annotation.RestController;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import com.tracker.expense.Entities.userExpenses;
import com.tracker.expense.Repositories.userExpensesRepository;

@RestController
public class userExpensesRestController {
    @Autowired
    private userExpensesRepository repository;

    @GetMapping("/getAllExpenses")
    public ResponseEntity<List<userExpenses>> getAllExpenses() {
        List<userExpenses> userExpenses = repository.findAll();

        if (userExpenses != null && !userExpenses.isEmpty()) {
            return new ResponseEntity<>(userExpenses, HttpStatus.FOUND);
        } else {
            return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping("/addExpense")
    public ResponseEntity<userExpenses> addExpense(@RequestBody userExpenses expenses) {
        if (expenses != null) {
            userExpenses exp = repository.save(expenses);
            return new ResponseEntity<>(exp, HttpStatus.CREATED);
        } else {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/getExpensesof/{id}")
    public ResponseEntity<Optional<userExpenses>> getMethodName(@PathVariable("id") String id) {
        Optional<userExpenses> exp = repository.findById(id);
        if (exp != null) {
            return new ResponseEntity<>(exp, HttpStatus.FOUND);
        } else {
            return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
        }
    }
}
