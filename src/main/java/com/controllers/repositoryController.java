package com.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/repository")
public class repositoryController {

    @RequestMapping("/")
    public String ini(){
        return "repository";
    }
}
