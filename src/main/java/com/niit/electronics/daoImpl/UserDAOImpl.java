package com.niit.electronics.daoImpl;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.electronics.dao.UserDAO;
import com.niit.electronics.model.User;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addUser(User user) {
		sessionFactory.getCurrentSession().save(user);
	}
	
	@Transactional
	public void saveorupdate(User user){
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	}
}
