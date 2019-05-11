package com.processor.surdoapp.demo.controller;

import com.processor.surdoapp.demo.form.UserCreateForm;
import com.processor.surdoapp.demo.util.RedirectUtil;
import com.processor.surdoapp.demo.validator.UserCreateFormValidator;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import com.processor.surdoapp.demo.service.UserService;

@Controller
@RequestMapping("/auth")
public class AuthController {

    private final UserService service;
    private final UserCreateFormValidator validator;

    public AuthController(UserService service, UserCreateFormValidator validator) {
        this.service = service;
        this.validator = validator;
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.addValidators(validator);
    }

    @GetMapping("/login")
    public ModelAndView get() {
        return new ModelAndView("auth/login");
    }

    @GetMapping("/registration")
    public ModelAndView registration() {
        return new ModelAndView("auth/registration")
                .addObject(UserCreateForm.class.getSimpleName(), new UserCreateForm());
    }

    @PostMapping("/registration")
    public ModelAndView registration(
            @Validated @ModelAttribute("UserCreateForm") UserCreateForm form,
            BindingResult bindingResult
    ) {
        if (bindingResult.hasErrors())
            return new ModelAndView("/auth/registration")
                    .addObject(UserCreateForm.class.getSimpleName(), form);

        service.create(form);
        return RedirectUtil.redirect("/auth/login");
    }

}
