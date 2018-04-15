package com.gec.action;
import com.gec.entiy.Users;
import com.gec.services.Login;
import com.gec.services.impl.LoginImpl;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginAction extends ActionSupport{
    public Users user;

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public String login(){
        Login lg=new LoginImpl();
        if(lg.login(user.getUid(), user.getUpwd())){
            HttpServletRequest request = ServletActionContext.getRequest();
            request.getSession().setAttribute("uid",user.getUid());
            HttpServletResponse response = ServletActionContext.getResponse();
            String[] radio =request.getParameterValues("unLogin");
            if(radio!=null){
                Cookie cookie = new Cookie("uid", user.getUid()+"");
                Cookie cookie1 = new Cookie("uPwd", user.getUpwd());
                cookie.setMaxAge(60 * 60 * 24 * 30);
                cookie1.setMaxAge(60 * 60 * 24 * 30);
                response.addCookie(cookie);
                response.addCookie(cookie1);
            }
            return "login";
        }else{
            return "error";
        }
    }


}
