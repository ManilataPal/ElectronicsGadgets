package com.niit.electronics.daoImpl;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.electronics.dao.SupplierDAO;

import com.niit.electronics.model.Supplier;

@Repository
public class SupplierDAOImpl implements SupplierDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	private Object supplier;
	
	
	
	public void addSupplier(Supplier supplier){
		sessionFactory.getCurrentSession().save(supplier);
	}
	public void editSupplier(Supplier supplier) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(supplier);
		
	}
	public void deleteSupplier(int sid) {
		Session session = this.sessionFactory.getCurrentSession();
		Supplier s = (Supplier) session.load(Supplier.class, sid);
		if(null != s){
			session.delete(s);
		}
		
	}
	public Supplier getSupplier(int sid) {
		System.out.println("Inside getSupplier"+sid);
		return (Supplier) sessionFactory.getCurrentSession().get(Supplier.class, sid);
	}
	public List<Supplier> getAllSupplier() {
		return (List<Supplier>) sessionFactory.getCurrentSession().createCriteria(Supplier.class).list();
	}

	
	

}
