package com.controllers;

import com.Domains.Profile;
import com.Domains.User;
import com.Domains.messageBags;
import com.dao.profileMapper;
import com.dao.userMapper;
import com.services.messageServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@RequestMapping("profile")
@Controller
public class profileController {

    @Autowired
    messageServices messageservices;

    @Autowired
    userMapper usermapper;

    @Autowired
    profileMapper profilemapper;

    @RequestMapping("/")
    public String showProfile(HttpSession session, Model model){
        messageBags bags =messageservices.getMessageBefore((String)session.getAttribute("username"));
        model.addAttribute("count",bags);
        String username=(String)session.getAttribute("username");
/*        User user=usermapper.selectAUserByName(username);
        model.addAttribute("profile",user);*/
        Profile profile=profilemapper.selectProfile(username);
        model.addAttribute("profile",profile);
        return "profile";
    }
}
