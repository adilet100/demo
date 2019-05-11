package com.processor.surdoapp.demo.repository;

import com.processor.surdoapp.demo.entity.QUser;
import org.jetbrains.annotations.NotNull;
import org.springframework.data.jpa.repository.JpaRepository;
import com.processor.surdoapp.demo.entity.User;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.data.querydsl.binding.QuerydslBinderCustomizer;
import org.springframework.data.querydsl.binding.QuerydslBindings;

public interface UserRepository extends JpaRepository<User, Long>,
        QuerydslPredicateExecutor<User>, QuerydslBinderCustomizer<QUser> {

    @Override
    default void customize(@NotNull QuerydslBindings querydslBindings, @NotNull QUser root) {

    }

    User findByUsernameIgnoreCase(String username);

    boolean existsByUsernameIgnoreCase(String username);


}
