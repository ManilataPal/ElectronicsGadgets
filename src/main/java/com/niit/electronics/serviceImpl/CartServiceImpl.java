package com.niit.electronics.serviceImpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.electronics.dao.cartDAO;
import com.niit.electronics.model.Cart;
import com.niit.electronics.service.CartService;

@Service
@Transactional
public class CartServiceImpl implements CartService {

	@Autowired
	private cartDAO cartdao;
	public void addToCart(Cart cart) {
		cartdao.addToCart(cart);
		
	}

	public Cart getCartById(int cartId) {
		
		return cartdao.getCartById(cartId);
	}
	
	

}
