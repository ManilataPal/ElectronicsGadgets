package com.niit.electronics.daoImpl;

import java.io.Serializable;

import org.apache.tomcat.jni.Address;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.electronics.model.User;

@Repository
public class CustomerDAOImpl implements Serializable{
	
	private SessionFactory sessionFactory;
	@Autowired
	public CustomerDAOImpl(SessionFactory sessionFactory) 
	{
		super();
		this.sessionFactory = sessionFactory;
		
	}
	 
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public Session getSession()
	{
		return sessionFactory.openSession();
	}
	public String adduser(User user) 
	{
		System.out.println("user add");
		sessionFactory.getCurrentSession().saveOrUpdate(user); 
		System.out.println("user add1");
		return "success";
	}
	public String insertaddress(Address address) {
		Session session=sessionFactory.getCurrentSession();
		session.save(address);		
		System.out.println("User DAO");
		return "success";
	}
	

}
