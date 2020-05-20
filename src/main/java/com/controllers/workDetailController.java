package com.controllers;

import com.Domains.*;
import com.dao.assignmentMapper;
import com.dao.sanswerMapper;
import com.dao.shortQuestionMapper;
import com.dao.themeOfOpMapper;
import com.services.messageServices;
import com.services.processQservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.spel.ast.Assign;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/workdetail")
public class workDetailController {

    @Autowired
    messageServices messageservices;

    @Autowired
    processQservice processService;

    @Autowired
    sanswerMapper sanswermapper;

    @Autowired
    assignmentMapper assignmentmapper;

    @Autowired
    shortQuestionMapper shortquestionmapper;

    @Autowired
    themeOfOpMapper themeofopmapper;

    @RequestMapping("/split")
    @ResponseBody
    public Object spli(String classname){
        System.out.println(classname);
//        List<Shortquestion> list=processService.proceeQuestion(classname);
        Sanswer answer=new Sanswer();
        answer.setSanswerClass("计算机161");
        answer.setSanswerFromW("1");
        answer.setSanswerOwn("201612290");
        List<Sanswer> list=sanswermapper.selectDisAnsFrOCC(answer);
        //List<Assignment> list=assignmentmapper.selectAssignFromPb(classname);
        return list;
    }

    @RequestMapping("/p")
    public String work(Model model, HttpSession session,String aid,String atitle){
        messageBags bags =messageservices.getMessageBefore((String)session.getAttribute("username"));
        Assignment assignment=assignmentmapper.selectAssignById(Integer.parseInt(aid));
        String[] assiOptionNum=assignment.getAssignmentChoice().split(",");
        String[] assiShortNum=assignment.getAssignmentShort().split(",");
        int[] assiopint=new int[assiOptionNum.length];
        int[] assishortint=new int[assiShortNum.length];
        for(int i=0;i<assiOptionNum.length;++i){
            assiopint[i]=Integer.parseInt(assiOptionNum[i]);
        }
        for(int j=0;j<assiShortNum.length;++j){
            assishortint[j]=Integer.parseInt(assiShortNum[j]);
        }
        List<Themeofoption> optionList=themeofopmapper.selectDistinOption(assiopint);
        List<Shortquestion> shortList=shortquestionmapper.selectDistinQues(assishortint);
        model.addAttribute("optionList",optionList);
        model.addAttribute("shortList",shortList);
        model.addAttribute("assiname",atitle);
        model.addAttribute("count",bags);
        model.addAttribute("status","remark");
        return "workdetail";
    }


}
