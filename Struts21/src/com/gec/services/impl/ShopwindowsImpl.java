package com.gec.services.impl;

import java.util.List;

import com.gec.dao.ShopwindowDao;
import com.gec.dao.impl.ShopwindowDaoImpl;
import com.gec.entiy.Shopwindow;
import com.gec.services.Shopwindows;

public class ShopwindowsImpl implements Shopwindows {

	@Override
	public List<Shopwindow> getShop(int a) {
		ShopwindowDao shop=new ShopwindowDaoImpl();
		return shop.getShop(a);
	}

	@Override
	public List<String> getShops() {
		ShopwindowDao shop=new ShopwindowDaoImpl();
		return shop.getShops();
	}

}
