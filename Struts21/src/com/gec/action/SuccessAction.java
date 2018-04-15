package com.gec.action;

import com.gec.entiy.ShoppingCart;
import com.gec.services.Cart;
import com.gec.services.Order;
import com.gec.services.impl.CartImpl;
import com.gec.services.impl.OrderImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class SuccessAction extends ActionSupport {
        private int sum=0;

    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }

    public String success(){

        HttpServletRequest request = ServletActionContext.getRequest();
        //删除购物车表中的内容
        Cart ca = new CartImpl();
        List<ShoppingCart> listAll = ca.selectAll();
        for ( ShoppingCart sp: listAll ) {
           sum+=sp.getCprice();
        }
        ca.delete();
        if(sum>0){
            Order o=new OrderImpl();
            int oprice=sum;
            int uid=(Integer) request.getSession().getAttribute("uid");
            Date day=new Date();
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String format = df.format(day);
            o.addOrder(oprice, format, uid);
        }
        return "success";
    }


}
