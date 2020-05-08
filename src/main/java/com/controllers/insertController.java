package com.controllers;

import com.Domains.messageBags;
import com.dao.sanswerMapper;
import com.services.messageServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/insert")
public class insertController {

    @Autowired
    messageServices messageservices;

    @Autowired
    sanswerMapper sanswermapper;

    @RequestMapping("/")
    public String insert(Model model, HttpSession session){
        messageBags bags =messageservices.getMessageBefore((String)session.getAttribute("username"));
        model.addAttribute("count",bags);
        model.addAttribute("status","remark");
        return "insert";
    }
}
