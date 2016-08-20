package com.niit.electronics.daoImpl;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.niit.electronics.dao.cartDAO;
import com.niit.electronics.model.Cart;

@Repository

public class CartDAOImpl implements cartDAO{
	@Autowired
	private SessionFactory sessionFactory;

	public void addToCart(Cart cart) {
		sessionFactory.getCurrentSession().save(cart);
		// TODO Auto-generated method stub
		
	}

	public Cart getCartById(int cartId) {
		return (Cart)sessionFactory.getCurrentSession().get("Cart.class", cartId);
		// TODO Auto-generated method stub
		
	}
	
	

}
