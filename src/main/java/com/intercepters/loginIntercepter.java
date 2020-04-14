package com.intercepters;

import com.Domains.User;
import com.dao.userMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class loginIntercepter implements HandlerInterceptor {

    @Autowired
    userMapper mapper;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        /*HttpSession session=request.getSession();
        String username=(String)session.getAttribute("username");
        User user=mapper.selectDistinctByName(username);
        if(user.getUserIdentity().equals("admin")){
            return true;
        }
        System.out.println("拦截成功！");
        response.sendRedirect("index");*/
        return true;

    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
