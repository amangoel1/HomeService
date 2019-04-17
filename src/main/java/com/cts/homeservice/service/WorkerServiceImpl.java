package com.cts.homeservice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.homeservice.bean.Worker;
import com.cts.homeservice.dao.WorkerDAO;

@Service
public class WorkerServiceImpl implements WorkerService {

	@Autowired
	private WorkerDAO workerDAO;
	
	@Override
	public  List<Worker> getWorkerByLocalityAndService(String vicinity, String service) {
		// TODO Auto-generated method stub
		return workerDAO.getWorkerByLocalityAndService(vicinity,service);
	}

	@Override
	public Worker getWorkerById(int workerId) {
		// TODO Auto-generated method stub
		return workerDAO.getWorkerById(workerId);
	}

	@Override
	public Worker authenticateWorker(Worker worker) {
		// TODO Auto-generated method stub
		return workerDAO.authenticateWorker(worker);
	}

	@Override
	public String addWorker(Worker worker) {
		// TODO Auto-generated method stub
		return workerDAO.addWorker(worker);
	}

	@Override
	public int getLastId() {
		// TODO Auto-generated method stub
		return workerDAO.getLastId();
	}

	@Override
	public boolean checkWorker(String email) {
		// TODO Auto-generated method stub
		return workerDAO.checkWorker(email);
	}

	@Override
	public List<Worker> getAvailableWorker(String date, String time, List<Worker> workerList) {
		// TODO Auto-generated method stub
		return workerDAO.getAvailableWorker(date, time, workerList);
	}

	@Override
	public int updateUser(Worker newWorker) {
		// TODO Auto-generated method stub
		return workerDAO.updateUser(newWorker);
	}
	
	

}
