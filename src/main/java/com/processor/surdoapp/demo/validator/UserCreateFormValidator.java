package com.processor.surdoapp.demo.validator;

import com.processor.surdoapp.demo.form.UserCreateForm;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import com.processor.surdoapp.demo.service.UserService;

@Component
public class UserCreateFormValidator implements Validator {

    private final UserService service;

    @Autowired
    public UserCreateFormValidator(UserService service) {
        this.service = service;
    }

    @Override
    public boolean supports(@NotNull Class<?> aClass) {
        return aClass.isAssignableFrom(UserCreateForm.class);
    }

    @Override
    public void validate(Object o, @NotNull Errors errors) {
        final UserCreateForm form = (UserCreateForm) o;

        if (service.existsByUsername(form.getUsername()))
            errors.rejectValue("username", "already-exist");
    }

}
