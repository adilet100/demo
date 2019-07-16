package com.processor.surdoapp.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class ChatController {

    @RequestMapping("/webrtc")
    public ModelAndView index () {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("chat/webrtc");
        return modelAndView;
    }
}
