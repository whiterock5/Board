package com.wool.board.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;



public class AdminInterceptor extends HandlerInterceptorAdapter {

	@Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception {
        if(!"admin".equals(request.getSession().getAttribute("login"))){
            response.sendRedirect("./Permission");
            return false;
        }
        return true;
    }
}