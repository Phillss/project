package com.controllers;

import com.Domains.Assignment;
import com.Domains.ClassAssoAssi;
import com.Domains.messageBags;
import com.dao.assignmentMapper;
import com.dao.classAssoWorkMapper;
import com.dao.profileMapper;
import com.services.messageServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/remark")
public class remarkController {

    @Autowired
    messageServices messageservices;

    @Autowired
    assignmentMapper assignmentmapper;

    @Autowired
    profileMapper profilemappper;

    @Autowired
    classAssoWorkMapper classassoworkmapper;

    @RequestMapping("/")
    public String process(Model model, HttpSession session){
        String username=(String)session.getAttribute("username");
        String unum=(String)session.getAttribute("usernum");
        messageBags bags =messageservices.getMessageBefore(username);
        List<Assignment> list=assignmentmapper.selectAssignFromPb(unum);
        List<ClassAssoAssi> classList=classassoworkmapper.selectAllClass(unum);
        int doneCount=0;
        for(ClassAssoAssi c:classList){
            if (c.getClassAssoAssiStatus().equals("remark")){
                doneCount++;
            }
        }
        model.addAttribute("count",bags);
        model.addAttribute("status","remark");
        model.addAttribute("worklist",list);
        model.addAttribute("workcount",list.size());
        model.addAttribute("classlist",classList);
        model.addAttribute("doneCount",doneCount);
        return "remark";
    }
}
