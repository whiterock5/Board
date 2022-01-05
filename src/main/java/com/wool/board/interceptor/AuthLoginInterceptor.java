package com.wool.board.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;



public class AuthLoginInterceptor extends HandlerInterceptorAdapter {

	@Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception {
        if("".equals(request.getSession().getAttribute("login")) || request.getSession().getAttribute("login") == null){
            response.sendRedirect("./LoginNull");
            return false;
        }
        return true;
    }
}