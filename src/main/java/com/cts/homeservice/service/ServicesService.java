package com.cts.homeservice.service;

import java.util.List;

import com.cts.homeservice.bean.Services;

public interface ServicesService {
	public List<Services> getAllServices();
	public String addService(Services service);
	public String updateService(Services service);
	public Services getServiceByName(String name);

}
