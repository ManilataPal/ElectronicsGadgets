package com.niit.electronics.daoImpl;

import java.util.List;

import javax.persistence.Entity;

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
	
	public void editProduct(Product product) {
		sessionFactory.getCurrentSession().createQuery("EDIT FROM Product WHERE pid="+product.getProductId()).executeUpdate();
		
	}
	
	public void deleteProduct(int pid) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM Product WHERE pid="+pid);
		
		
	}

	public Product getProduct(int pid) {
		
		return (Product) sessionFactory.getCurrentSession().get(Product.class, pid);
	}

	
	public List<Product> getAllProduct() {
		
		return(List<Product>)
		sessionFactory.getCurrentSession().createCriteria(Product.class).list();
	}

}
