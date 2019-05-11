package com.processor.surdoapp.demo.service.impl;

import com.processor.surdoapp.demo.entity.QUser;
import com.processor.surdoapp.demo.form.UserCreateForm;
import com.processor.surdoapp.demo.repository.UserRepository;
import com.querydsl.core.BooleanBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import com.processor.surdoapp.demo.entity.User;
import com.processor.surdoapp.demo.service.UserService;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Component
public class UserServiceImpl implements UserService {

    private final PasswordEncoder encoder;
    private final UserRepository repository;

    @Autowired
    public UserServiceImpl(PasswordEncoder encoder, UserRepository repository) {
        this.encoder = encoder;
        this.repository = repository;
    }

    @Override
    public boolean existsByUsername(String username) {
        return repository.existsByUsernameIgnoreCase(username);
    }

    @Override
    public User save(User user) {
        return repository.save(user);
    }

    @Override
    public User create(UserCreateForm form) {
        return save(User.of(form.setPassword(encoder.encode(form.getPassword()))));
    }

    @Override
    public List<User> findAll(String username) {
        QUser root = QUser.user;
        BooleanBuilder builder = new BooleanBuilder();

        builder.and(root.username.containsIgnoreCase(username));

        assert builder.getValue() != null;

        return StreamSupport.stream(repository.findAll(builder.getValue()).spliterator(), false)
                .collect(Collectors.toList());
    }

}
