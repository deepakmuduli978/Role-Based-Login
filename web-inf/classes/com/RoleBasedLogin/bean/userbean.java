package com.RoleBasedLogin.bean;
import java.io.Serializable;

public class userbean implements Serializable {

    private String mail;
    private String pass;
    public userbean(){
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getMail() {
        return mail;
    }

    public void setPass(String pass) {
        this.pass=pass;
    }

    public String getPass() {
        return pass;
    }
}