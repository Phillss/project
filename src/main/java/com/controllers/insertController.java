package com.controllers;

import com.Domains.*;
import com.dao.assignmentMapper;
import com.dao.classAssoWorkMapper;
import com.dao.sanswerMapper;
import com.services.messageServices;
import com.services.overViewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.LinkedList;
import java.util.List;

@Controller
@RequestMapping("/insert")
public class insertController {

    @Autowired
    messageServices messageservices;

    @Autowired
    sanswerMapper sanswermapper;

    @Autowired
    classAssoWorkMapper classassoworkmapper;

    @Autowired
    assignmentMapper assignmentmapper;

    @Autowired
    overViewService overviewservice;

    @RequestMapping("/")
    public String insert(Model model, HttpSession session){
        messageBags bags =messageservices.getMessageBefore((String)session.getAttribute("username"));
        model.addAttribute("count",bags);
        model.addAttribute("status","remark");
        return "insert";
    }


    @RequestMapping("/overview")
    @ResponseBody
    public Object OverView(HttpSession session,String selid,String pname){
        OverView overlist=overviewservice.overviews(selid);
        System.out.println(selid);
        return overlist;
    }

    @RequestMapping("/single")  //同班同一类题目
    public String single(String type,String pid,String pname,String pcs,Model model){
        Singles sin=new Singles();
        System.out.println(pid+pname);
        sin.setSanswerClass(pname);
        sin.setSanswerFromAss(pid);
        List<Singles> listsan=sanswermapper.selectSingles(sin);
        System.out.println(listsan.size());
        model.addAttribute("lists",listsan);
        model.addAttribute("paper",pcs);
        return "insert";
    }

    @RequestMapping("/complete")  //同班整套试卷
    public String complete(Model model,HttpSession session){
        String num=(String)session.getAttribute("usernum");
        return "insert";
    }
}
