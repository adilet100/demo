package com.processor.surdoapp.demo.controller;

import com.processor.surdoapp.demo.entity.User;
import com.processor.surdoapp.demo.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class HomeController {

    private final UserService service;

    public HomeController(UserService service) {
        this.service = service;
    }

    @GetMapping("/")
    public ModelAndView get() {
        List<User> list = service.findAll("admin");
        return new ModelAndView("main");
    }

}
