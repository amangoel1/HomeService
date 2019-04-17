package com.cts.homeservice.service;

import java.util.List;

import com.cts.homeservice.bean.Requests;

public interface RequestsService {
	
	public int getLastRequestId();
	public String addRequest(Requests request);
	public List<Requests> getRequestsByUser(int userId);
	public List<Requests> getAllRequests();
	public List<Requests> getRequestByWorker(int workerId);
	public Requests getRequestById(int requestId);
	public String assignWorker(Requests request);
	public List<Requests> getRequestByWorkerDate(int workerId, String date);
	

}
