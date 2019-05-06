package com.zlw.global;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EnCodingFilter implements Filter {
    private String enCoding="utf-8";
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        if (filterConfig.getInitParameter("enCoding")!=null){
            enCoding=filterConfig.getInitParameter("enCoding");
        }
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        request.setCharacterEncoding(enCoding);
        response.setCharacterEncoding(enCoding);
        filterChain.doFilter(request,response);
    }

    @Override
    public void destroy() {

    }
}
