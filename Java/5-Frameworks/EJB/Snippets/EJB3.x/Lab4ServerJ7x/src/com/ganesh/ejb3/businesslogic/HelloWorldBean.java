package com.ganesh.ejb3.businesslogic;

import javax.ejb.Stateless;

import com.ganesh.ejb3.business.HelloWorld;

@Stateless
public class HelloWorldBean implements HelloWorld {
    public HelloWorldBean() {
    }
 
    public String sayHello() {
        return "I Love you you banu.";
    }
}