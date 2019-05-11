package com.processor.surdoapp.demo.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import com.processor.surdoapp.demo.service.AppUserDetailsService;

/**
 * Created by abdysamat on 10/9/17.
 * n.u.abdysamat@gmail.com
 */
@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    private final AppUserDetailsService appUserDetailsService;

    @Autowired
    public SecurityConfiguration(AppUserDetailsService appUserDetailsService) {
        this.appUserDetailsService = appUserDetailsService;
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder(8);
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(appUserDetailsService);
    }

    @Override
    protected void configure(HttpSecurity http)
            throws Exception {

        http.authorizeRequests()

                .antMatchers("/static/assets/**", "/webjars/**", "/favicon.ico", "/auth/**")
                .permitAll()

                .anyRequest()
                .authenticated();

        http.formLogin()
                .loginPage("/auth/login")
                .usernameParameter("email")
                .passwordParameter("password")
                .permitAll()
                .defaultSuccessUrl("/", false);

        http.logout()
                .logoutUrl("/auth/logout")
                .logoutSuccessUrl("/auth/login")
                .permitAll();

        http
                .csrf()
                .disable();
    }
}