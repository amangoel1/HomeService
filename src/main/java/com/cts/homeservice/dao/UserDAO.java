package com.cts.homeservice.dao;

import com.cts.homeservice.bean.User;

public interface UserDAO {
	public User authenticateUser(User user);
	public String addUser(User user);
	public int getLastId();
	public boolean checkUser(String email);
	public User getUserById(int userId);
	public int updateUser(User newUser);

}
