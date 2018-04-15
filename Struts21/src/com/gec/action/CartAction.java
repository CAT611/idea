package com.gec.action;

import com.gec.entiy.Groupon;
import com.gec.entiy.ShoppingCart;
import com.gec.services.Cart;
import com.gec.services.Group;
import com.gec.services.impl.CartImpl;
import com.gec.services.impl.GroupImpl;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.List;

public class CartAction extends ActionSupport {
    private String sname;
    private String che;
    private String order;
    private Groupon group;
    private String pageNow;
    private int page;
    private List<ShoppingCart> listPage;
    private List<ShoppingCart> listAll;

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getChe() {
        return che;
    }

    public void setChe(String che) {
        this.che = che;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }

    public Groupon getGroup() {
        return group;
    }

    public void setGroup(Groupon group) {
        this.group = group;
    }

    public String getPageNow() {
        return pageNow;
    }

    public void setPageNow(String pageNow) {
        this.pageNow = pageNow;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public List<ShoppingCart> getListPage() {
        return listPage;
    }

    public void setListPage(List<ShoppingCart> listPage) {
        this.listPage = listPage;
    }

    public List<ShoppingCart> getListAll() {
        return listAll;
    }

    public void setListAll(List<ShoppingCart> listAll) {
        this.listAll = listAll;
    }

    public String cart(){
        Cart cart=new CartImpl();
        HttpServletRequest request = ServletActionContext.getRequest();
        //获取request对象

        //页面转换
        if(che!=null||pageNow!=null){
            //如果点击加入购物车，跳转到cart.jsp页面
            //字符编码转换
            Group gp=new GroupImpl();
            //通过details.jsp页面的sname获取商品详情

            if(sname!=null){
                try {
                    sname=new String(sname.getBytes("iso8859-1"),"UTF-8");
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
                group=gp.selectDetails(sname);
                int gprice=group.getGprice();
                String gintro=group.getGintro();
                cart.insert(sname, gprice, gintro);
                //填入购物车
            }

            int pageNow=1;
            page=cart.selectCount();
            //查询总页数
            String newPage=request.getParameter("pageNow");
            //获取jsp页面的当前页
            if(newPage!=null){
                if(Integer.parseInt(newPage)<=1){
                    pageNow=1;
                }else if(Integer.parseInt(newPage)>=page){
                    pageNow=page;
                }else{
                    pageNow=Integer.parseInt(newPage);
                }
            }
            //查询分页信息
            listPage = cart.selectAll(pageNow);
            //查询购物车商品总数
            listAll = cart.selectAll();


            return "che";
        }else {
            //点击结算跳转到结算页面
            Group gp=new GroupImpl();
            //通过details.jsp页面的sname获取商品详情
            group=gp.selectDetails(sname);
            int gprice=group.getGprice();
            String gintro=group.getGintro();
            cart.insert(sname, gprice, gintro);


            return "order";
        }

    }
}
