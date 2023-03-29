package com.isd;
import java.io.Serializable;

public class user implements Serializable{
    private String fullName;
    private String password;
    private String username;
    private String emailAddress;
    private String address;
    
    public user() {}
    
    public user(String name, String pwd, String user, String email, String add) {
        this.fullName = name;
        this.password = pwd;
        this.username = user;
        this.emailAddress = email;
        this.address = add;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

}