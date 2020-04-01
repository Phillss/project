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
        HttpSession session=request.getSession();
        String userSession=(String)session.getAttribute("userSession");
        String userName=(String)session.getAttribute("userName");
        String name=request.getParameter("userName");
        if(userSession==null){
            return true;
        }else{
            System.out.println(userSession+userName+"已经登录");
            response.sendRedirect("home");
            return true;
        }

    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
