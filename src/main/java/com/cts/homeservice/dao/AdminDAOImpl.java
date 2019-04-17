	package com.cts.homeservice.dao;

import javax.transaction.Transactional;
import javax.transaction.Transactional.TxType;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.hibernate.resource.transaction.spi.TransactionStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.event.TransactionPhase;


import com.cts.homeservice.bean.Admin;
import com.cts.homeservice.bean.Worker;

@Repository
@Transactional
public class AdminDAOImpl implements AdminDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public Admin authenticateAdmin(Admin profile) {
		// TODO Auto-generated method stub
		try{
			System.out.println("admin dao");
			
		String userId = profile.getEmail();
		String password = profile.getPwd();
		
		System.out.println(userId +"  "+password);
		Session session = sessionFactory.getCurrentSession();
		String query = "from Admin where email = ? and pwd = ? ";
		Query<Admin> query2 = null;
		
		query2=session.createQuery(query);
		
		query2.setParameter(0,userId);  
		query2.setParameter(1,password);  
		Admin user= query2.getSingleResult();
		
		if(user!=null)
		{
			
		return user;
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
	public String addAdmin(Admin admin) {
		try{
			sessionFactory.getCurrentSession().save(admin);
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
			Query query = session.createQuery("from Admin order by adminId DESC");
			query.setMaxResults(1);
		Admin admin = (Admin) query.uniqueResult();

			
			if(admin!=null)
			{
				
				return admin.getAdminId();
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
	public boolean checkAdmin(String email) {
		try{
			Session session = sessionFactory.getCurrentSession();
			String query = "from Admin where email = ?";
			Query<Admin> query2 = null;
			query2=session.createQuery(query);
			
			query2.setParameter(0,email);  
			Admin admin= query2.getSingleResult();
			
			if(admin!=null)
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
	public int updateAdmin(Admin newAdmin) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().saveOrUpdate(newAdmin);
			return 1;
			}
			catch(Exception ex){
				ex.printStackTrace();
				return 0;
			}
	}

	

}
