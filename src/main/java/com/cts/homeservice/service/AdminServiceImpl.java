package com.cts.homeservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


import com.cts.homeservice.bean.Admin;
import com.cts.homeservice.bean.User;
import com.cts.homeservice.dao.AdminDAO;

@Service
@Transactional
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDAO adminDAO;


	@Override
	
	@Transactional(readOnly = true, propagation=Propagation.SUPPORTS)
	public Admin authenticateAdmin(Admin login) {
		// TODO Auto-generated method stub
		return adminDAO.authenticateAdmin(login);
	}


	@Override
	public String addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return adminDAO.addAdmin(admin);
	}


	@Override
	public int getLastId() {
		// TODO Auto-generated method stub
		return adminDAO.getLastId();
	}


	@Override
	public boolean checkAdmin(String email) {
		// TODO Auto-generated method stub
		return adminDAO.checkAdmin(email);
	}


	@Override
	public int updateAdmin(Admin newAdmin) {
		// TODO Auto-generated method stub
		return adminDAO.updateAdmin(newAdmin);
	}

		
	

	
	
}
