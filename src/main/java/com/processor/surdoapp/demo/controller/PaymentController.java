package com.processor.surdoapp.demo.controller;

import com.processor.surdoapp.demo.util.RedirectUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/payment")
public class PaymentController {

    @GetMapping("/one")
    public ModelAndView one() {
        return RedirectUtil.redirect("/?mode=one");
    }

    @GetMapping("/two")
    public ModelAndView two() {
        return RedirectUtil.redirect("/?mode=two");
    }

    @GetMapping("/three")
    public ModelAndView three() {
        return RedirectUtil.redirect("/?mode=three");
    }

    @GetMapping("/common")
    public ModelAndView common(
            @RequestParam(name = "mode", required = false, defaultValue = "one") String mode
    ) {
        return RedirectUtil.redirect(String.format("/?mode=%s", mode));
    }

}

