package com.gec.services.impl;

import java.util.List;

import com.gec.dao.ShoppingCartDao;
import com.gec.dao.impl.ShoppingCartDaoImpl;
import com.gec.entiy.ShoppingCart;
import com.gec.services.Cart;

public class CartImpl implements Cart {
	ShoppingCartDao sp=new ShoppingCartDaoImpl();
	@Override
	public void insert(String cname, int cprice, String cintro) {
		// TODO Auto-generated method stub
		sp.insertCart(cname, cprice, cintro);
	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub
		sp.deleteCart();
	}

	@Override
	public List<ShoppingCart> selectAll(int pageNow) {
		// TODO Auto-generated method stub
		return sp.selectAll( pageNow);
	}

	@Override
	public int selectCount() {
		// TODO Auto-generated method stub
		return sp.selectCount();
	}

	@Override
	public List<ShoppingCart> selectAll() {
		// TODO Auto-generated method stub
		return sp.selectAll();
	}

}
