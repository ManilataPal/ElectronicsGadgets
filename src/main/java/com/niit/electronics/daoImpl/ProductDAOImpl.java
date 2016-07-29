package com.niit.electronics.daoImpl;

import java.util.List;

import javax.persistence.Entity;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.electronics.dao.ProductDAO;
import com.niit.electronics.model.Product;
@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	public void addProduct(Product product) {
	sessionFactory.getCurrentSession().save(product);
		
	}
	
	public void deleteProduct(int pid) {
		Session session = this.sessionFactory.getCurrentSession();
		Product p = (Product) session.load(Product.class, pid);
		if(null != p){
			session.delete(p);
		}
		
		
		
	}

	public Product getProduct(int pid) {
		System.out.println("Inside getProduct"+pid);
		return (Product) sessionFactory.getCurrentSession().get(Product.class, pid);
		
	}

	
	public List<Product> getAllProduct() {
		
		return(List<Product>)
		sessionFactory.getCurrentSession().createCriteria(Product.class).list();
	}

	public void editProduct(Product product) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(product);				
	}

}
