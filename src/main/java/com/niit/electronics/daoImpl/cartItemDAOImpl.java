package com.niit.electronics.daoImpl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.electronics.dao.cartItemDAO;
import com.niit.electronics.model.Cart;
import com.niit.electronics.model.Item;



@Repository
public class cartItemDAOImpl implements cartItemDAO{
	@Autowired
	 private SessionFactory sessionFactory;

	public void addCartItem(Item cartItem) {
		Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cartItem);
		
	}

	public void removeCartItem(Item cartItem) {
		
		
	}

	public Item getCartItemByProductId(int productId) {
		Session session = sessionFactory.getCurrentSession();
		 
        Query query = session.createQuery("from Item where itemId = ?");
        query.setInteger(0, productId);
        session.flush();
        return (Item) query.uniqueResult();
	}

	public void removeAllCartItems(Cart cart) {
		
		
	}

	

}
