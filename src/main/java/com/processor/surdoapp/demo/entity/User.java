package com.processor.surdoapp.demo.entity;

import com.processor.surdoapp.demo.form.UserCreateForm;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Collection;
import java.util.Collections;

@Entity
@Table(name = "users")
public class User extends BaseTimedEntity implements UserDetails {

    public static User of(UserCreateForm form) {

        return new User()
                .setUsername(form.getUsername())
                .setPassword(form.getPassword())
                .setLast_name(form.getLastName())
                .setPhone_number(form.getPhoneNumber())
                .setE_mail(form.getE_mail())
                .setRole(UserRole.ROLE_USER);
    }

    @NotEmpty
    @Column(unique = true)
    private String username;

    @NotEmpty
    private String password;

    @NotEmpty
    private String last_name;

    @NotEmpty
    private String e_mail;

    @NotEmpty
    private String phone_number;

    @NotNull
    @Enumerated
    private UserRole role;

    public User setUsername(String username) {
        this.username = username;
        return this;
    }
    public User setPassword(String password) {
        this.password = password;
        return this;
    }
    public User setRole(UserRole role) {
        this.role = role;
        return this;
    }
    public User setLast_name(String last_name) {
        this.last_name = last_name;
        return this;
    }
    public User setE_mail(String e_mail) {
        this.e_mail = e_mail;
        return this;
    }
    public User setPhone_number(String phone_number) {
        this.phone_number = phone_number;
        return this;
    }

    public UserRole getRole() {
        return role;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return Collections.singletonList(role);
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return username;
    }

    public String getLastName() {
        return last_name;
    }

    public String getE_mail() {
        return e_mail;
    }

    public String getPhoneNumber() {
        return phone_number;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

}
