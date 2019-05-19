package com.processor.surdoapp.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GreetingController {

    @GetMapping("/greeting")
    public ModelAndView greeting(
            @RequestParam(name = "name", required = false, defaultValue = "World") String name
    ) {
        return new ModelAndView("greeting")
                .addObject("greetingVar", name);
    }

}
