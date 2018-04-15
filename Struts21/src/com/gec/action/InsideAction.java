package com.gec.action;

import com.gec.entiy.Sight;
import com.gec.services.SightProduct;
import com.gec.services.impl.SightProductImpl;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

public class InsideAction extends ActionSupport {

    private List<Sight> listTop3;
    private List<Sight> listTop8;

    public List<Sight> getListTop3() {
        return listTop3;
    }

    public void setListTop3(List<Sight> listTop3) {
        this.listTop3 = listTop3;
    }

    public List<Sight> getListTop8() {
        return listTop8;
    }

    public void setListTop8(List<Sight> listTop8) {
        this.listTop8 = listTop8;
    }

    public List<Sight> getListTop10() {
        return listTop10;
    }

    public void setListTop10(List<Sight> listTop10) {
        this.listTop10 = listTop10;
    }

    private  List<Sight> listTop10;
    public String inside(){
        SightProduct sp=new SightProductImpl();
        int tid=8;
         listTop3 = sp.top3(tid);
        tid=9;
         listTop8 = sp.Top8Product(tid);
        tid=10;
         listTop10 = sp.Top10Product(tid);
        return "success";
    }

}
