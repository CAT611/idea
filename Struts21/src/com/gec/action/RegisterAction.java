package com.gec.action;

import com.gec.entiy.Users;
import com.gec.services.Login;
import com.gec.services.impl.LoginImpl;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class RegisterAction extends ActionSupport implements ModelDriven<Users> {

    public Users user;

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public String Register(){
        Login register=new LoginImpl();
        boolean flag=register.register(user);
        if(flag){
            return "success";
        }else {
            return "error";
        }


    }

    @Override
    public Users getModel() {
        return user;
    }
}
