package com.controllers;

import com.Domains.messageBags;
import com.Domains.messageNotices;
import com.dao.messageNoticesMapper;
import com.dao.noticeMapper;
import com.services.messageServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/message")
public class messageController {

    @Autowired
    messageNoticesMapper messagenoticesMapper;

    @Autowired
    noticeMapper noticemapper;

    @Autowired
    messageServices messageservices;

    @RequestMapping("/all")
    public String defaultMessageAll(HttpSession session, Model model){
        String username=(String)session.getAttribute("username");
         List<messageNotices> messages=messagenoticesMapper.selectAllMessagesByReceiver(username);
         model.addAttribute("messageNotices",messages);
        return "notices";
    }

    @RequestMapping("/allNotices")
    public String allNotices(HttpSession session,Model model){
        messageBags bags =messageservices.getMessageBefore((String)session.getAttribute("username"));
        model.addAttribute("count",bags);
        String username=(String)session.getAttribute("username");
        List<messageNotices> messages=messagenoticesMapper.selectAllNoticesByReceiver(username);
        model.addAttribute("messageNotices",messages);
        model.addAttribute("type","notice");
        model.addAttribute("typename","最近消息");
        model.addAttribute("status","all");
        return "notices";
    }

    @RequestMapping("/allFeedback")
    public String allFeedback(HttpSession session,Model model){
        messageBags bags =messageservices.getMessageBefore((String)session.getAttribute("username"));
        model.addAttribute("count",bags);
        String username=(String)session.getAttribute("username");
        List<messageNotices> messages=messagenoticesMapper.selectAllFeedbackByReceiver(username);
        model.addAttribute("messageNotices",messages);
        model.addAttribute("type","feedback");
        model.addAttribute("typename","收到反馈");
        model.addAttribute("status","all");
        return "notices";
    }

    @RequestMapping("/allBroadcast")
    public String allBroadcast(HttpSession session,Model model){
        messageBags bags =messageservices.getMessageBefore((String)session.getAttribute("username"));
        model.addAttribute("count",bags);
        String username=(String)session.getAttribute("username");
        List<messageNotices> messages=messagenoticesMapper.selectAllBroadcastByReceiver(username);
        model.addAttribute("messageNotices",messages);
        model.addAttribute("type","broadcast");
        model.addAttribute("typename","未读公告");
        model.addAttribute("status","all");
        return "notices";
    }

    @RequestMapping("/allSystem")
    public String allSystem(HttpSession session,Model model){
        messageBags bags =messageservices.getMessageBefore((String)session.getAttribute("username"));
        model.addAttribute("count",bags);
        String username=(String)session.getAttribute("username");
        List<messageNotices> messages=messagenoticesMapper.selectAllSystemByReceiver(username);
        model.addAttribute("messageNotices",messages);
        model.addAttribute("type","system");
        model.addAttribute("typename","系统消息");
        model.addAttribute("status","all");
        return "notices";
    }

    @RequestMapping("/afterTess")
    public String afterTess(@RequestParam(name = "name") String value, HttpSession session, Model model){
        System.out.println("异步请求数据： "+value);
        String username=(String)session.getAttribute("username");
        List<messageNotices> messages=messagenoticesMapper.selectAfterTest(username);
        model.addAttribute("messageNotices",messages);
        model.addAttribute("type","notice");
        model.addAttribute("typename","最近消息");
        model.addAttribute("status","after");
        return "notices";
    }
}
