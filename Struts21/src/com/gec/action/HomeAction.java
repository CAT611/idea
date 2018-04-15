package com.gec.action;

import com.gec.entiy.Sight;
import com.gec.services.Shopwindows;
import com.gec.services.SightProduct;
import com.gec.services.impl.ShopwindowsImpl;
import com.gec.services.impl.SightProductImpl;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.List;

public class HomeAction extends ActionSupport implements ModelDriven<Sight>{

    private Sight sight;

    public List<Sight> getListInside() {
        return listInside;
    }

    public void setListInside(List<Sight> listInside) {
        this.listInside = listInside;
    }

    public List<Sight> getListOutside() {
        return listOutside;
    }

    public void setListOutside(List<Sight> listOutside) {
        this.listOutside = listOutside;
    }

    public List<Sight> getListIslands() {
        return listIslands;
    }

    public void setListIslands(List<Sight> listIslands) {
        this.listIslands = listIslands;
    }

    public List<Sight> getListByself() {
        return listByself;
    }

    public void setListByself(List<Sight> listByself) {
        this.listByself = listByself;
    }

    public List<Sight> getListOne() {
        return listOne;
    }

    public void setListOne(List<Sight> listOne) {
        this.listOne = listOne;
    }

    public List<Sight> getListTwo() {
        return listTwo;
    }

    public void setListTwo(List<Sight> listTwo) {
        this.listTwo = listTwo;
    }

    public List<Sight> getListThree() {
        return listThree;
    }

    public void setListThree(List<Sight> listThree) {
        this.listThree = listThree;
    }


    public List<String> getList() {
        return list;
    }

    public void setList(List<String> list) {
        this.list = list;
    }

    public Sight getSight() {
        return sight;
    }

    public void setSight(Sight sight) {
        this.sight = sight;
    }
    public List<Sight> listInside;



    private List<Sight> listOutside;
    private List<Sight> listIslands;
    private List<Sight> listByself;
    private List<Sight> listOne;
    private List<Sight> listTwo;
    private List<Sight> listThree;
    private List<String> list ;

    public String home(){
        SightProduct sp=new SightProductImpl();
        listInside=sp.Top6Product(1);
        listOutside=sp.Top6Product(2);
        listIslands=sp.Top6Product(3);
        listByself=sp.Top6Product(4);
        listOne=sp.Top8Product(5);
        listTwo=sp.Top8Product(6);
        listThree=sp.Top8Product(7);
        Shopwindows shop=new ShopwindowsImpl();
        list = shop.getShops();
        return "home";
    }

    @Override
    public Sight getModel() {
        return sight;
    }
}
