package com.gec.services.impl;

import com.gec.dao.OrderDao;
import com.gec.dao.impl.OrderDaoImpl;
import com.gec.services.Order;


public class OrderImpl implements Order{

	@Override
	public void addOrder(int oprice, String odate, int uid) {
		OrderDao o = new OrderDaoImpl();
		o.addOrder(oprice, odate, uid);
	}

}
