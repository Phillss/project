package com.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/views")
public class viewsController {

    @RequestMapping("/home")
    public String viewHome(){
        return "home";
    }
    @RequestMapping("/remark")
    public String viewRemark(){
        return "remark";
    }
    @RequestMapping("/group")
    public String viewGroup(){
        return "group";
    }
    @RequestMapping("/count")
    public String viewCount(){
        return "count";
    }
    @RequestMapping("/profile")
    public String viewProfile(){
        return "profile";
    }
}
