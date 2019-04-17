package com.cts.homeservice.dao;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cts.homeservice.bean.User;
import com.cts.homeservice.bean.Worker;


@Repository
@Transactional
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	@Transactional
	public User authenticateUser(User user) {
		try{
			String email = user.getEmail();
			String password = user.getPwd();
			Session session = sessionFactory.getCurrentSession();
			String query = "from User where email = ? and pwd = ?";
			Query<User> query2 = null;
			
			query2=session.createQuery(query);
			
			query2.setParameter(0,email);  
			query2.setParameter(1,password);  
			User user1= query2.getSingleResult();
			
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
	public String addUser(User user) {
		try{
			sessionFactory.getCurrentSession().save(user);
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
			Query query = session.createQuery("from User order by userId DESC");
			query.setMaxResults(1);
		User user = (User) query.uniqueResult();

			
			if(user!=null)
			{
				
				return user.getUserId();
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
	public boolean checkUser(String email) {
		try{
			Session session = sessionFactory.getCurrentSession();
			String query = "from User where email = ?";
			Query<User> query2 = null;
			query2=session.createQuery(query);
			
			query2.setParameter(0,email);  
			User user1= query2.getSingleResult();
			
			if(user1!=null)
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
	public User getUserById(int userId) {
		try{
			Session session = sessionFactory.getCurrentSession();
			String query = "from User where userId = ?";
			Query<User> query2 = null;
			query2=session.createQuery(query);
			
			query2.setParameter(0,userId);  
			User user1= query2.getSingleResult();
			
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
				return null;
			}
	}

	@Override
	public int updateUser(User newUser) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().saveOrUpdate(newUser);
			return 1;
			}
			catch(Exception ex){
				ex.printStackTrace();
				return 0;
			}
	}
	

}
