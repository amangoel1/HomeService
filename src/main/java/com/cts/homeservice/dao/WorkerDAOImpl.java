package com.cts.homeservice.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;
import javax.xml.stream.events.StartDocument;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cts.homeservice.bean.Requests;
import com.cts.homeservice.bean.Worker;
import com.cts.homeservice.service.RequestsService;

@Repository
@Transactional
public class WorkerDAOImpl implements WorkerDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private RequestsService requestService;
	
	@Override
	public List<Worker> getWorkerByLocalityAndService(String vicinity, String service ) {
		// TODO Auto-generated method stub
		TypedQuery<Worker> query = sessionFactory.getCurrentSession().createQuery("from Worker where skills like '%"+service+"%'");
		 List<Worker> workers = query.getResultList();
		 
		 List<Worker> localWorkers = new ArrayList<Worker>();
	     String locality;
		 for(Worker worker : workers) {
			  locality = worker.getLocality();
			  if(vicinity.indexOf(locality)!=-1) {
				  localWorkers.add(worker);
				  
			  }
			  
		 }
	
		 System.out.println(localWorkers);
		 return localWorkers;
		
	
	}

	@Override
	public Worker getWorkerById(int workerId) {
		// TODO Auto-generated method stub
		try{
			Session session = sessionFactory.getCurrentSession();
			String query = "from Worker where workerId = ?";
			Query<Worker> query2 = null;
			
			query2=session.createQuery(query);
			
			query2.setParameter(0,workerId);
			Worker user1= query2.getSingleResult();
			
			if(user1!=null)
			{
				
			return user1;
			}
			else
			{
				
				return null;
			}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return null;
	}

	@Override
	public Worker authenticateWorker(Worker worker) {
		try{
			String email = worker.getEmail();
			String password = worker.getPwd();
			Session session = sessionFactory.getCurrentSession();
			String query = "from Worker where email = ? and pwd = ?";
			Query<Worker> query2 = null;
			
			query2=session.createQuery(query);
			
			query2.setParameter(0,email);  
			query2.setParameter(1,password);  
			Worker user1= query2.getSingleResult();
			
			System.out.println(worker);
			if(user1!=null)
			{
				
			return user1;
			}
			else
			{
				
				return null;
			}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return null;	}

	@Override
	public String addWorker(Worker worker) {
		try{
			sessionFactory.getCurrentSession().save(worker);
			return "success";
			}
			catch(Exception ex){
				ex.printStackTrace();
				return "failed";
			}
	}

	@Override
	public int getLastId() {
		try{
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from Worker order by workerId DESC");
			query.setMaxResults(1);
		Worker worker = (Worker) query.uniqueResult();

			
			if(worker!=null)
			{
				
				return worker.getWorkerId();
			}
			else
			{
				return 1;
				
			}
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return 0;
			}
	}

	@Override
	public boolean checkWorker(String email) {
		try{
			Session session = sessionFactory.getCurrentSession();
			String query = "from Worker where email = ?";
			Query<Worker> query2 = null;
			query2=session.createQuery(query);
			
			query2.setParameter(0,email);  
			Worker worker= query2.getSingleResult();
			
			if(worker!=null)
			{
				
			return true;
			}
			else
			{
				
				return false;
			}
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}
	}

	@Override
	public List<Worker> getAvailableWorker(String date, String time, List<Worker> workerList) {
		 List<Worker> availableWorkers = new ArrayList<Worker>();
	     List<Requests> requestList = new ArrayList<Requests>();
	     String requestTime,startTime,endTime;
	     int i=0;
	     for(Worker worker : workerList) {
		
			 requestList = requestService.getRequestByWorkerDate(worker.getWorkerId(), date);
			 
			 if(requestList.isEmpty())
				 availableWorkers.add(worker);
			 else {
				 
				 for(Requests req : requestList) {
					 requestTime = req.getTime();
					 startTime = requestTime.substring(0, 5);
					 endTime = requestTime.substring(6);
					 if(!(date.substring(0, 5).compareTo(endTime)==-1 && startTime.compareTo(date.substring(6))==-1)) {
						 i++; break;
					 }
					 if(i==0) {
						 availableWorkers.add(worker);
					 }
					 i=0;
					 
				 }
				 
				 
			 }
			 requestList.clear();
			  
			  
		 }
		 return availableWorkers;
		
	}

	@Override
	public int updateUser(Worker newWorker) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().saveOrUpdate(newWorker);
			return 1;
			}
			catch(Exception ex){
				ex.printStackTrace();
				return 0;
			}
	}

	

}
