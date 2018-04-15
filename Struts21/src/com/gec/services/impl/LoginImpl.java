package com.gec.services.impl;

import com.gec.dao.UsersDao;
import com.gec.dao.impl.UsersDaoImpl;
import com.gec.entiy.Users;
import com.gec.services.Login;

public class LoginImpl implements Login {
	UsersDao ud=new UsersDaoImpl();
	@Override
	public boolean login(int uid, String upwd) {
		// TODO Auto-generated method stub
		return ud.login(uid, upwd);
	}

	@Override
	public boolean register(Users user) {
		// TODO Auto-generated method stub
		return ud.addUsers(user);
	}

	@Override
	public int nextID() {
		// TODO Auto-generated method stub
		return ud.nextId();
	}

	@Override
	public Users userInfo(int uid) {
		// TODO Auto-generated method stub
		return ud.selectInfo(uid);
	}

}
