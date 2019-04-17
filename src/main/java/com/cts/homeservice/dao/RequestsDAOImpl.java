package com.cts.homeservice.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cts.homeservice.bean.Requests;

@Repository
@Transactional
public class RequestsDAOImpl implements RequestsDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public int getLastRequestId() {
	
		try{
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from Requests order by requestId DESC");
			query.setMaxResults(1);
		Requests request = (Requests) query.uniqueResult();
			
			if(request!=null)
			{
				
				System.out.println(request.getRequestId());
			return request.getRequestId();
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
	public String addRequest(Requests request) {
		
		try{
			sessionFactory.getCurrentSession().save(request);
			return "success";
			}
			catch(Exception ex){
				ex.printStackTrace();
				return "failed";
			}
	}
	@Override
	public List<Requests> getRequestsByUser(int userId) {
		// TODO Auto-generated method stub
		
		try {
			 TypedQuery<Requests> query = sessionFactory.getCurrentSession().createQuery("from Requests where userId=?");
			 query.setParameter(0, userId);
			 
		      return query.getResultList();
		}
		catch (Exception e) {
			// TODO: handle exception
			return null;
		}

	}
	@Override
	public List<Requests> getAllRequests() {
		// TODO Auto-generated method stub
	try {
		 TypedQuery<Requests> query = sessionFactory.getCurrentSession().createQuery("from Requests where workerId = 0");
		 
	      return query.getResultList();
	}
	catch (Exception e) {
		// TODO: handle exception
		return null;
	}
	}
	@Override
	public List<Requests> getRequestByWorker(int workerId) {
	
		try {
			 TypedQuery<Requests> query = sessionFactory.getCurrentSession().createQuery("from Requests where workerId=?");
			 query.setParameter(0, workerId);
			 
		      return query.getResultList();
		}
		catch (Exception e) {
			// TODO: handle exception
			return null;
		}

		
	}
	@Override
	public Requests getRequestById(int requestId) {
		try{
			Session session = sessionFactory.getCurrentSession();
			String query = "from Requests where requestId = ?";
			Query<Requests> query2 = null;
			query2=session.createQuery(query);
			
			query2.setParameter(0,requestId);  
			Requests request= query2.getSingleResult();
			
			if(request!=null)
			{
				
			return request;
			}
			else
			{
				
				return null;
			}
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return null;
			}
	}
	@Override
	public String assignWorker(Requests request) {
		

		try{
			sessionFactory.getCurrentSession().saveOrUpdate(request);
			return "success";
			}
			catch(Exception ex){
				ex.printStackTrace();
				return "failed";
			}
		
		
		
	}
	@Override
	public List<Requests> getRequestByWorkerDate(int workerId, String date) {
		
		try {
			 TypedQuery<Requests> query = sessionFactory.getCurrentSession().createQuery("from Requests where workerId=? and date=?");
			 query.setParameter(0, workerId);
			 query.setParameter(1, date);
		      return query.getResultList();
		}
		catch (Exception e) {
			// TODO: handle exception
			return null;
		}
		
	}

}
