package com.tracker.expense.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tracker.expense.Entities.userRegister;
import com.tracker.expense.Services.userRegisterService;

@Controller
public class usersExpensesController {

    @Autowired
    private userRegisterService service;

    @RequestMapping("/Login")
    public String renderLogin() {
        return "LoginPage";
    }

    @RequestMapping("/Register")
    public String renderRegister() {
        return "RegPage";
    }

    @RequestMapping("/Home")
    public String renderHome() {
        return "home";
    }

    @RequestMapping("/saveReg")
    public String saveUser(@ModelAttribute("userRegister") userRegister userRegister) {
        userRegister userReg = service.saveUser(userRegister);
        if (userReg != null) {
            return "LoginPage";
        } else {
            return "RegPage";
        }
    }
}