package com.ganesh.ejb3.business;

import javax.ejb.Remote;

@Remote
public interface HelloWorld {
    public String sayHello();
}