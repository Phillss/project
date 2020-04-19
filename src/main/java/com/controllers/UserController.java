package com.controllers;

import com.Domains.Notice;
import com.Domains.User;
import com.Domains.messageBags;
import com.dao.messageNoticesMapper;
import com.dao.noticeMapper;
import com.dao.userMapper;
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
import java.util.List;

@RequestMapping("/log")
@Controller
public class UserController {

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
            UsernamePasswordToken token=new UsernamePasswordToken(user.getUserName(),user.getUserPassword());
//            token.setRememberMe(true);
            try {
                currentUser.login(token);
                session.setAttribute("username",user.getUserName());
                model.addAttribute("notice","undone");
                overview=new homePageOverview();
                overview.prepareAction(model,user,noticemapper,messageservices);
                return "home";
            }catch (AuthenticationException e){
                System.out.println("登录失败 "+e.getMessage());
                model.addAttribute("message","用户名或密码错误！");
                return "login";
            }
        }else{
            overview=new homePageOverview();
            overview.prepareAction(model,user,noticemapper,messageservices);
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
        List<Notice> notices=noticemapper.selectAllNoticesByTime();
        model.addAttribute("message",notices);
        List<Notice> noticeSystem=noticemapper.selectAllSystemByTime();
        model.addAttribute("systemMessage",noticeSystem);
        messageBags bags =messageservices.getMessageBefore(username);
        model.addAttribute("count",bags);
        return "home";
    }


}
