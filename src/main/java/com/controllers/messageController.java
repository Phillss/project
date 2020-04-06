package com.controllers;

import com.Domains.messageNotices;
import com.dao.messageNoticesMapper;
import com.dao.noticeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/message")
public class messageController {

    @Autowired
    messageNoticesMapper messagenoticesMapper;

    @Autowired
    noticeMapper noticemapper;

    @RequestMapping("/all")
    public String defaultMessageAll(HttpSession session, Model model){
        String username=(String)session.getAttribute("username");
         List<messageNotices> messages=messagenoticesMapper.selectAllMessagesByReceiver(username);
         model.addAttribute("messageNotices",messages);
        return "notices";
    }
}
