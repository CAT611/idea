package com.gec.action;

import com.gec.entiy.ShoppingCart;
import com.gec.services.Cart;
import com.gec.services.impl.CartImpl;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

public class OrderAction extends ActionSupport {

    private  List<ShoppingCart> listAll;
    Cart cart=new CartImpl();

    public List<ShoppingCart> getListAll() {
        return listAll;
    }

    public void setListAll(List<ShoppingCart> listAll) {
        this.listAll = listAll;
    }

    public String order(){
        listAll = cart.selectAll();

        return "order";
    }
}
