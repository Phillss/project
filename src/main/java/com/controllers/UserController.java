package com.controllers;

import com.Domains.Notice;
import com.Domains.User;
import com.dao.messageNoticesMapper;
import com.dao.noticeMapper;
import com.dao.userMapper;
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
                List<Notice> notices=noticemapper.selectAllNoticesByTime();
                model.addAttribute("message",notices);
                List<Notice> noticeSystem=noticemapper.selectAllSystemByTime();
                model.addAttribute("systemMessage",noticeSystem);
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
    @ResponseBody
    public User home(@RequestBody User user){
        user.setUserIdentity("身份：教师");
        System.out.println(user.getUserName());
        return user;
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
