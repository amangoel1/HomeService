package com.cts.homeservice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.homeservice.bean.Services;
import com.cts.homeservice.dao.ServicesDAO;

@Service
public class ServicesServiceImpl implements ServicesService{

	@Autowired
	private ServicesDAO servicesDAO;
	
	@Override
	public List<Services> getAllServices() {
		// TODO Auto-generated method stub
		return servicesDAO.getAllServices();
	}

	@Override
	public String addService(Services service) {
		// TODO Auto-generated method stub
		return servicesDAO.addService(service);
	}

	@Override
	public String updateService(Services service) {
		// TODO Auto-generated method stub
		return servicesDAO.updateService(service);
	}

	@Override
	public Services getServiceByName(String name) {
		// TODO Auto-generated method stub
		return servicesDAO.getServiceByName(name);
	}



}
