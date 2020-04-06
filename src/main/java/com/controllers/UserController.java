package com.controllers;

import com.Domains.Notice;
import com.Domains.User;
import com.Domains.messageNotices;
import com.dao.messageNoticesMapper;
import com.dao.noticeMapper;
import com.dao.userMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@RequestMapping("/log")
@Controller
public class UserController {

    @Autowired
    userMapper mapper;

    @Autowired
    noticeMapper noticemapper;

    @Autowired
    messageNoticesMapper messageNoticesMapper;

    @RequestMapping("/index")
    public String index(){
        return "login";
    }

    @RequestMapping(value="/in",method = RequestMethod.POST)
    public String login(User user, Model model, HttpServletRequest request){
        HttpSession session=request.getSession();
        User user_repository=mapper.selectDistinctByName(user.getUserName());
        if(user_repository!=null){
            String userPass=user_repository.getUserPassword();
            if(user.getUserPassword().equals(userPass)){
                session.setAttribute("username",user.getUserName());
                model.addAttribute("notice","undone");
                Notice notice=noticemapper.selectNotice("2020-4-3");
                model.addAttribute("message",notice);
                int messagesCount=messageNoticesMapper.selectAllCountBefore(user.getUserName());
                model.addAttribute("count",messagesCount);
                return "home";
            }else{
                model.addAttribute("message","用户名或密码错误！");
                return "login";
            }
        }else{
            model.addAttribute("message","用户名或密码错误！");
            return "login";
        }




    }

    @RequestMapping("/home")
    public String home(){
        return "home";
    }
    @RequestMapping("/count")
    public String count(){
        return "count";
    }
    @RequestMapping("/group")
    public String group(){
        return "group";
    }
    @RequestMapping("/profile")
    public String profile(){
        return "profile";
    }
    @RequestMapping("/remark")
    public String remark(){
        return "remark";
    }
}
