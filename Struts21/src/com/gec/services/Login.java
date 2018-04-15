package com.gec.services;

import com.gec.entiy.Users;

public interface Login {
	public boolean login(int uid,String upwd);
	public Users userInfo(int uid);
	public boolean register(Users user);
	public int nextID();
}
