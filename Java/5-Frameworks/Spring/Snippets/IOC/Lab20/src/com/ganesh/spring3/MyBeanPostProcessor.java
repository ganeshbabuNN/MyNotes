package com.ganesh.spring3;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanPostProcessor;

public class MyBeanPostProcessor implements BeanPostProcessor{

	public Object postProcessAfterInitialization(Object obj, String bname)
			throws BeansException {
		System.out.println("MyBeanPostProcessor-postProcessAfterInitialization() "+bname);		
		return obj;
	}

	public Object postProcessBeforeInitialization(Object obj, String bname)
			throws BeansException {
			System.out.println("MyBeanPostProcessor-postProcessBeforeInitialization() "+bname);		
		return obj;
	}
	

}
