package com.controllers;

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
    public String login(User user, Model model, HttpServletRequest request){
        HttpSession session=request.getSession();
        String userSession=session.getId();
        session.setAttribute("userSession",userSession);
        session.setAttribute("userName",user.getUserName());
        User userBy=mapper.selectDistinctByName(user.getUserName());
        if(userBy.getUserPassword().equals(user.getUserPassword())){
            user.setUserSessionId(userSession);
            mapper.updateUser(user);
            return "home";
        }
        model.addAttribute("message","用户名或密码错误！");
        return "login";
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
