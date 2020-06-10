package com.services;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

public class Check {


    public String MD5salt(String pass) {
        String algorithmName = "MD5";
        Object source = pass;
        Object result = new SimpleHash(algorithmName, source);
        return result.toString();
    }
}
