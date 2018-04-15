package com.gec.filter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

public class EncodeFilter implements Filter{
    private  String encoding = "UTF-8";

    @Override
    public void destroy() {
        // TODO Auto-generated method stub

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        // TODO Auto-generated method stub
        HttpServletRequest hreq = (HttpServletRequest)request;
        HttpServletResponse hres = (HttpServletResponse)response;
        hres.setContentType("text/html;charset="+encoding);
        HttpRequestWapper req = new HttpRequestWapper(hreq);
        chain.doFilter(req, response);
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // TODO Auto-generated method stub
        String encodeName = filterConfig.getInitParameter("encoding");
        if(encodeName != null && !"".equals(encodeName.trim())){
            this.encoding = encodeName;
        }
    }

    public class HttpRequestWapper extends HttpServletRequestWrapper{

        public HttpRequestWapper(HttpServletRequest request) {
            super(request);

        }
        //重写方法
        public String getParameter(String name){
            String str = null;
            str = encoding(((HttpServletRequest)this.getRequest()).getParameter(name));

            return str;
        }
        public String[] getParameterValues(String name){
            String[] str = null;
            str = ((HttpServletRequest)this.getRequest()).getParameterValues(name);
            if(str != null){
                for(int i = 0; i < str.length; i++){
                    str[i] = encoding(str[i]);
                }
            }
            return str;
        }

    }
    //实现转码
    public String encoding(String str){
        if(str != null){
            try {
                str = new String(str.getBytes("ISO-8859-1"),this.encoding);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return str;
    }
}  