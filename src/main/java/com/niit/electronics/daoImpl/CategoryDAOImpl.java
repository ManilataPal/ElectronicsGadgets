package com.niit.electronics.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.electronics.dao.CategoryDAO;
import com.niit.electronics.model.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCategory(Category category) {
		
		sessionFactory.getCurrentSession().save(category);
	}

	public void editCategory(Category category) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(category);
		
	}

	public void deleteCategory(int cid) {
		Session session = this.sessionFactory.getCurrentSession();
		Category c = (Category) session.load(Category.class, cid);
		if(null != c){
			session.delete(c);
		}
		
	}

	public Category getCategory(int cid) {
		System.out.println("Inside getCategory"+cid);
		
		return (Category) sessionFactory.getCurrentSession().get(Category.class, cid);
	}

	public List<Category> getAllCategory() {
		
		return (List<Category>)
		sessionFactory.getCurrentSession().createCriteria(Category.class).list();
		
	}
	

}
