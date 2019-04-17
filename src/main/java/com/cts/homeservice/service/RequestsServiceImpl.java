package com.cts.homeservice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.homeservice.bean.Requests;
import com.cts.homeservice.dao.RequestsDAO;

@Service
public class RequestsServiceImpl implements RequestsService {

	@Autowired
	private RequestsDAO requestsDAO;
	
	@Override
	public int getLastRequestId() {
		// TODO Auto-generated method stub
		return requestsDAO.getLastRequestId();
	}

	@Override
	public String addRequest(Requests request) {
		// TODO Auto-generated method stub
		return requestsDAO.addRequest(request);
	}

	@Override
	public List<Requests> getRequestsByUser(int userId) {
		// TODO Auto-generated method stub
		return requestsDAO.getRequestsByUser(userId);
	}

	@Override
	public List<Requests> getAllRequests() {
		// TODO Auto-generated method stub
		return requestsDAO.getAllRequests();
	}

	@Override
	public List<Requests> getRequestByWorker(int workerId) {
		// TODO Auto-generated method stub
		return requestsDAO.getRequestByWorker(workerId);
	}

	@Override
	public Requests getRequestById(int requestId) {
		// TODO Auto-generated method stub
		return requestsDAO.getRequestById(requestId);
	}

	@Override
	public String assignWorker(Requests request) {
		// TODO Auto-generated method stub
		return requestsDAO.assignWorker(request);
	}

	@Override
	public List<Requests> getRequestByWorkerDate(int workerId, String date) {
		// TODO Auto-generated method stub
		return requestsDAO.getRequestByWorkerDate(workerId, date);
	}

}
