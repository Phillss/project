package com.aspect;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class logAspect {

    @Before("execution(* com.controllers.UserController.login(..))")
    public void before(){
        System.out.println("操作之前记录……");
    }

    @After("execution(* com.controllers.UserController.*(..))")
    public void after(){
        System.out.println("操作之后记录……");
    }
}
