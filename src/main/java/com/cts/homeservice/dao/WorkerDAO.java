package com.cts.homeservice.dao;

import java.util.List;

import com.cts.homeservice.bean.User;
import com.cts.homeservice.bean.Worker;

public interface WorkerDAO {

	public List<Worker> getWorkerByLocalityAndService(String vicinity, String service);
	public Worker getWorkerById(int workerId);
	public Worker authenticateWorker(Worker worker);
	public String addWorker(Worker worker);
	public int getLastId();
	public boolean checkWorker(String email);
	public List<Worker> getAvailableWorker(String date,String time, List<Worker> workerList);
	public int updateUser(Worker newWorker); 
}
