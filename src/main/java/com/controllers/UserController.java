package com.controllers;

import com.Domains.*;
import com.dao.*;
import com.services.homePageOverview;
import com.services.messageServices;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

@RequestMapping("/log")
@Controller
public class UserController implements Serializable {

    @Autowired
    userMapper mapper;

    @Autowired
    noticeMapper noticemapper;

    @Autowired
    messageNoticesMapper messageNoticesMapper;

    @Autowired
    messageServices messageservices;

    @Autowired
    homePageOverview overview;

    @Autowired
    profileMapper profilemapper;

    @Autowired
    classAssoWorkMapper classassoworkmapper;

    @RequestMapping("/index")
    public String index(){
        if(SecurityUtils.getSubject().isAuthenticated()){
            return "home";
        }
        return "login";
    }

    @RequestMapping(value="/in",method = {RequestMethod.POST,RequestMethod.GET})
    public String login(User user, Model model, HttpServletRequest request){
        HttpSession session=request.getSession();
        Subject currentUser=SecurityUtils.getSubject();
        currentUser.getSession().setTimeout(1800000);//30min
        if(!currentUser.isAuthenticated()){
            UsernamePasswordToken token=new UsernamePasswordToken(user.getUserCount(),user.getUserPassword());
//            token.setRememberMe(true);
            try {
                currentUser.login(token);
                int uid=mapper.selectAUserByName(user.getUserCount()).getUserId();
                String unum=profilemapper.selectUserById(uid).getTeaNum();
                session.setAttribute("username",user.getUserCount());
                session.setAttribute("usernum",unum);
                model.addAttribute("notice","undone");
                overview=new homePageOverview();
                overview.prepareAction(model,user.getUserCount(),noticemapper,messageservices);
                List<Notice> notices=noticemapper.selectAllNoticesByTime();
                model.addAttribute("moticelist",notices);
                List<ClassAssoAssi> classAssi=classassoworkmapper.selectWorkingByDesc(unum);
                model.addAttribute("undonework",classAssi);
                return "home";
            }catch (AuthenticationException e){
                System.out.println("登录失败 "+e.getMessage());
                model.addAttribute("message","用户名或密码错误！");
                return "login";
            }
        }else{
            int uid=mapper.selectAUserByName(user.getUserCount()).getUserId();
            String unum=profilemapper.selectUserById(uid).getTeaNum();
            overview=new homePageOverview();
            overview.prepareAction(model,user.getUserCount(),noticemapper,messageservices);
            List<Notice> notices=noticemapper.selectAllNoticesByTime();
            model.addAttribute("moticelist",notices);
            List<ClassAssoAssi> classAssi=classassoworkmapper.selectWorkingByDesc(unum);
            model.addAttribute("undonework",classAssi);
            return "home";
        }
    }

    @RequestMapping("/out")
    public String logout(){
        Subject currentUser=SecurityUtils.getSubject();
        currentUser.logout();
        return "login";
    }

    @RequestMapping("/home")
    public String home(HttpServletRequest request,Model model){
        String username=(String)request.getSession().getAttribute("username");
        String unum=(String)request.getSession().getAttribute("usernum");
        overview=new homePageOverview();
        overview.prepareAction(model,username,noticemapper,messageservices);
        List<Notice> notices=noticemapper.selectAllNoticesByTime();
        model.addAttribute("moticelist",notices);
        List<ClassAssoAssi> classAssi=classassoworkmapper.selectWorkingByDesc(unum);
        model.addAttribute("undonework",classAssi);
        return "home";
    }

    @RequestMapping(value="/request",method = {RequestMethod.POST,RequestMethod.GET})
    @ResponseBody        //异步检索
    public Object requests(String searchtitle){
        /*System.out.println(searchtitle);*/
        List<String> list=mapper.selectTestByname(searchtitle);
        return list;
    }

    @RequestMapping("/workoverview")
    @ResponseBody
    public Object workundone(String overview,HttpSession session){
        String unum=(String)session.getAttribute("usernum");
        System.out.println(overview);
        if(overview.equals("done")){
            List<ClassAssoAssi> workedlist=classassoworkmapper.selectWorkedByDesc(unum);
            System.out.println("完成");
            return workedlist;
        }else{
            List<ClassAssoAssi> workedlist=classassoworkmapper.selectWorkingByDesc(unum);
            System.out.println("未完成");
            return  workedlist;
        }

    }


}
