package com.controllers;

import com.Domains.*;
import com.dao.*;
import com.services.messageServices;
import com.services.overViewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Date;
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

    @Autowired
    markMapper markmapper;

    @Autowired
    userMapper usermapper;

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
//        System.out.println(selid);
        return overlist;
    }

    @RequestMapping("/single")  //同班同一类题目  pid题目ID,pname班级名称,pcs作业名称
    public String single(String type,String pid,String pname,String pcs,Model model,HttpSession session){
        String num=(String)session.getAttribute("usernum");
        Singles sin=new Singles();
        sin.setSanswerClass(pname);
        sin.setSanswerFromAss(pid);
        if(type.equals("c")){
            List<Singles> listsan=sanswermapper.selectSinglesInChoose(sin);
            model.addAttribute("lists",listsan);
        }else{
            List<Singles> listsan=sanswermapper.selectSingles(sin);
            model.addAttribute("lists",listsan);
            List<publicMark> publicMarkList=markmapper.selectAllPub();
            List<privateMark> privateMarklist=markmapper.selectPrivate(num);
            model.addAttribute("publicMarkList",publicMarkList);
            model.addAttribute("privateMarklist",privateMarklist);
        }
        model.addAttribute("paper",pcs);
        return "insert";
    }

    @RequestMapping("/syns")
    @ResponseBody
    public Object getSyndata(HttpSession session,String sanid){
        privateMark privatemark=new privateMark();
        String num=(String)session.getAttribute("usernum");
        privatemark.setPrivateRemarkReference(num);
        privatemark.setPrivateRefer(sanid);
        List<privateMark> privateMarklist=markmapper.selectPrivateByPri(privatemark);
        return privateMarklist;
    }

    @RequestMapping("/sycompl")
    @ResponseBody
    public Object getCpmplData(HttpSession session,String gclass,String count){
        String num=(String)session.getAttribute("usernum");
        String[] slist=(String[])session.getAttribute("stilist");
        System.out.println(gclass+count);
        int ncou=Integer.parseInt(count);
        domainComplete dom=new domainComplete();
        dom.setGclass(gclass);
        String[] lists=usermapper.selectNumByStuClass(gclass);
        dom.setNumber(lists[ncou]);
        List<completeBack> clback=sanswermapper.selectComplete(dom);
        System.out.println(clback.size());
//        model.addAttribute("clback",clback);
        return clback;
        /*String na="";
        if(clback.size()!=0){
            na=clback.get(0).getStuName();
        }
        model.addAttribute("cla",gclass);
        model.addAttribute("name",na);
        List<publicMark> publicMarkList=markmapper.selectAllPub();
        List<privateMark> privateMarklist=markmapper.selectPrivate(num);
        model.addAttribute("publicMarkList",publicMarkList);
        model.addAttribute("privateMarklist",privateMarklist);
        model.addAttribute("stuNumList",lists);
        session.setAttribute("stilist",lists);*/
    }

    @RequestMapping("/complete")  //同班整套试卷
    public String complete(Model model,HttpSession session,String gclass,String type){
        String num=(String)session.getAttribute("usernum");
        domainComplete dom=new domainComplete();
        dom.setGclass(gclass);
        String[] lists=usermapper.selectNumByStuClass(gclass);
        dom.setNumber(lists[0]);
        List<completeBack> clback=sanswermapper.selectComplete(dom);
        model.addAttribute("clback",clback);
        String na="";
        if(clback.size()!=0){
            na=clback.get(0).getStuName();
        }
        model.addAttribute("cla",gclass);
        model.addAttribute("name",na);
        List<publicMark> publicMarkList=markmapper.selectAllPub();
        List<privateMark> privateMarklist=markmapper.selectPrivate(num);
        model.addAttribute("publicMarkList",publicMarkList);
        model.addAttribute("privateMarklist",privateMarklist);
        model.addAttribute("stuNumList",lists);
        session.setAttribute("stilist",lists);
        return "complete";
    }

    @RequestMapping("/upd")
    @ResponseBody     //mid批注ID,posi位置,currid当前回答
    public Object getToInsert(String type,String mid,String posi,String currid,String pmark,HttpSession session){
        String num=(String)session.getAttribute("usernum");
        if(type.equals("pub")){
            privateMark privatemark=new privateMark(pmark,new Date(),num,currid,posi);
            markmapper.insertPrivate(privatemark);
        }else{
            publicMark publicmark=new publicMark(pmark,new Date(),currid,posi);
            markmapper.insertPublic(publicmark);
        }
        return "succ";
    }

}
