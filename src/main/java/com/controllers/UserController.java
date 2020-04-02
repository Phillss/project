package com.controllers;

import com.Domains.Messages;
import com.Domains.User;
import com.dao.userMapper;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.naming.AuthenticationNotSupportedException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    userMapper mapper;

    @RequestMapping("index")
    public String index(){
        return "login";
    }

    @RequestMapping(value="login")
    public String login(User user, Model model){
        /*String name=user.getUserName();
        Messages messages =new Messages();
        if(name=="done"){
            messages.setValue("done");
            model.addAttribute("message",messages);
        }else{
            model.addAttribute("message",messages);
        }*/
        model.addAttribute("message",user.getUserName());
        return "home";
    }

    @RequestMapping("/home")
    public String home(){
        return "home";
    }
    @RequestMapping("/count")
    public String count(){
        return "count";
    }
    @RequestMapping("/group")
    public String group(){
        return "group";
    }
    @RequestMapping("/profile")
    public String profile(){
        return "profile";
    }
    @RequestMapping("/remark")
    public String remark(){
        return "remark";
    }
}
