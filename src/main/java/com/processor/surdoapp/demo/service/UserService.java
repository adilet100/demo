package com.processor.surdoapp.demo.service;

import com.processor.surdoapp.demo.form.UserCreateForm;
import com.processor.surdoapp.demo.entity.User;
import com.querydsl.core.types.Predicate;

import java.util.List;

public interface UserService {

    boolean existsByUsername(String username);

    User save(User user);

    User create(UserCreateForm form);

    List<User> findAll(String username);

}
