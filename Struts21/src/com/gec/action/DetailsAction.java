package com.gec.action;

import com.gec.entiy.Groupon;
import com.gec.entiy.Users;
import com.gec.services.Group;
import com.gec.services.impl.GroupImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;

public class DetailsAction extends ActionSupport {
    private Users user;
    private String [] gphoto;
    private Groupon group;

    public Groupon getGroup() {
        return group;
    }

    public void setGroup(Groupon group) {
        this.group = group;
    }

    private String sname;

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String[] getGphoto() {
        return gphoto;
    }

    public void setGphoto(String[] gphoto) {
        this.gphoto = gphoto;
    }

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public String details(){
        Group gp=new GroupImpl();
        HttpServletRequest request = ServletActionContext.getRequest();
        try {
            sname = new String((sname).getBytes("iso-8859-1"), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        System.out.println(sname);
        group=gp.selectDetails(sname);
        String str=group.getGphoto();
        if(str!=null){
             gphoto=str.split(",");
        }
        return "details";
    }


}
