package com.controllers;

import com.Domains.Teacher;
import com.Domains.messageBags;
import com.dao.userMapper;
import com.services.messageServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("group")
public class groupController {

    @Autowired
    messageServices messageservices;

    @Autowired
    userMapper mapper;

    @RequestMapping("/")
    public String processGroup(Model model, HttpSession session){
        messageBags bags =messageservices.getMessageBefore((String)session.getAttribute("username"));
        model.addAttribute("count",bags);
        model.addAttribute("status","group");
        List<Teacher> teachers=mapper.selectAllTea();
        model.addAttribute("tlist",teachers);
        return "group";
    }
}
