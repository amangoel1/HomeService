package com.cts.homeservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cts.homeservice.bean.User;
import com.cts.homeservice.dao.UserDAO;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO loginDAO;

	@Override
	@Transactional(readOnly = true, propagation=Propagation.SUPPORTS)
	public User authenticateUser(User user) {
		// TODO Auto-generated method stub
		return loginDAO.authenticateUser(user);
	}

	@Override
	public String addUser(User user) {
		// TODO Auto-generated method stub
		return loginDAO.addUser(user);
	}

	@Override
	public int getLastId() {
		// TODO Auto-generated method stub
		return loginDAO.getLastId();
	}

	@Override
	public boolean checkUser(String email) {
		// TODO Auto-generated method stub
		return loginDAO.checkUser(email);
	}

	@Override
	public User getUserById(int userId) {
		// TODO Auto-generated method stub
		return loginDAO.getUserById(userId);
	}

	@Override
	public int updateUser(User newUser) {
		// TODO Auto-generated method stub
		return loginDAO.updateUser(newUser);
	}

	
	

}
