package com.gec.action;

import com.gec.entiy.Groupon;
import com.gec.services.Group;
import com.gec.services.impl.GroupImpl;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

public class GrouponAction extends ActionSupport {
    private int pageNum;
    private List<Groupon> list;

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public List<Groupon> getList() {
        return list;
    }

    public void setList(List<Groupon> list) {
        this.list = list;
    }

    public String groupon(){
        int pageNum=1;
        Group g = new GroupImpl();
        int num = g.getcount();
        if(pageNum<=1){
            pageNum=1;
        }else if(pageNum>=num){
            pageNum=num;
        }else{
            pageNum=pageNum;
        }

        list = g.getGroup(pageNum);

        return "success";
    }
}
