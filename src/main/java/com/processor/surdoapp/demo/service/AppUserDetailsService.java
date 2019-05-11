package com.processor.surdoapp.demo.service;

import com.processor.surdoapp.demo.repository.UserRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import com.processor.surdoapp.demo.entity.User;

import javax.persistence.EntityNotFoundException;

@Service
public class AppUserDetailsService implements UserDetailsService {
    private final UserRepository userRepository;

    public AppUserDetailsService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        User user = userRepository.findByUsernameIgnoreCase(s);
        if (user == null)
            throw new EntityNotFoundException("User not found");
        return user;
    }

}
