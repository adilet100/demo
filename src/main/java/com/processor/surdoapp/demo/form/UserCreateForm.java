package com.processor.surdoapp.demo.form;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class UserCreateForm {

    @NotEmpty
    private String username;

    @NotEmpty
    @Size(min = 6, max = 12)
    private String password;

    @NotEmpty
    private String lastName;

    @NotEmpty
    private String e_mail;

    @NotEmpty
    private String phoneNumber;


    public UserCreateForm() {
    }

    public String getUsername() {
        return username;
    }

    public UserCreateForm setUsername(String username) {
        this.username = username;
        return this;
    }

    public String getPassword() {
        return password;
    }

    public UserCreateForm setPassword(String password) {
        this.password = password;
        return this;
    }

    public String getLastName() {return lastName; }

    public UserCreateForm setLastName(String lastName) {
        this.lastName = lastName;
        return this;
    }

    public String getE_mail() { return e_mail; }

    public UserCreateForm setE_mail(String e_mail) {
        this.e_mail = e_mail;
        return this;
    }

    public String getPhoneNumber() { return phoneNumber; }

    public UserCreateForm setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
        return this;
    }
}
