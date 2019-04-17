package com.cts.homeservice.dao;

import com.cts.homeservice.bean.Admin;
import com.cts.homeservice.bean.User;
import com.cts.homeservice.bean.Worker;
public interface AdminDAO {
	
public Admin authenticateAdmin(Admin admin);
public String addAdmin(Admin admin);
public int getLastId();
public boolean checkAdmin(String email);
public int updateAdmin(Admin newAdmin);
	
	
	
}
