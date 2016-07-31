package com.niit.electronics.daoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.electronics.dao.RollsDAO;
import com.niit.electronics.model.Rolls;

@Repository
public class RollsDAOImpl implements RollsDAO{

	@Autowired
	private SessionFactory sessionFactory;
	public void addRolls(Rolls rolls){
		sessionFactory.getCurrentSession().save(rolls);
	}
}
