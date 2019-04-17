package com.cts.homeservice.dao;

import java.util.List;

import com.cts.homeservice.bean.Services;

public interface ServicesDAO {

	public List<Services> getAllServices();
	public String addService(Services service);
	public String updateService(Services service);
	public Services getServiceByName(String name);

}
