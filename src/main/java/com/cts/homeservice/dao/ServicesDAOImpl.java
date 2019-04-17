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
import com.cts.homeservice.bean.Services;
import com.cts.homeservice.bean.User;
@Repository
@Transactional
public class ServicesDAOImpl implements ServicesDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	//@SuppressWarnings("unchecked")
	@Override
	public List<Services> getAllServices() {
		// TODO Auto-generated method stub
		try {
			 TypedQuery<Services> query = sessionFactory.getCurrentSession().createQuery("from Services");
			 
		      return query.getResultList();
		}
		catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return null;
		}
	}

	@Override
	public String addService(Services service) {
		try{
			System.out.println(service);
			sessionFactory.getCurrentSession().save(service);
			return "success";
			}
			catch(Exception ex){
				ex.printStackTrace();
				return "failed";
			}
	}

	@Override
	public String updateService(Services service) {
		try{
			sessionFactory.getCurrentSession().saveOrUpdate(service);
			return "success";
			}
			catch(Exception ex){
				ex.printStackTrace();
				return "failed";
			}
	}

	@Override
	public Services getServiceByName(String name) {
		try{
			Session session = sessionFactory.getCurrentSession();
			String query = "from Services where serviceName = ?";
			Query<Services> query2 = null;
			
			query2=session.createQuery(query);
			
			query2.setParameter(0,name);    
			Services service= query2.getSingleResult();
			
			if(service!=null)
			{
				
			return service;
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

	
}
