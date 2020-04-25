package com.controllers;

import com.Domains.Scores;
import com.Domains.messageBags;
import com.dao.chartMapper;
import com.services.messageServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/count")
public class chartController {
    @Autowired
    chartMapper chartmapper;

    @Autowired
    messageServices messageservices;

    @RequestMapping("showDetail")
    public String showDetail(Model model, HttpSession session){
        messageBags bags =messageservices.getMessageBefore((String)session.getAttribute("username"));
        model.addAttribute("count",bags);
        model.addAttribute("status","detail");
        return "count";
    }

    @RequestMapping("/byCourse")
    @ResponseBody
    public List<Scores> byCourse(String course,String cls){
        Scores scores=new Scores();
        scores.setScoreCourse(course);
        scores.setScoreClass(cls);
        List<Scores> list=chartmapper.selectByCourseAndClass(scores);
        return list;
    }
}
