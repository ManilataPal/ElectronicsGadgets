package com.niit.electronics.service;

import com.niit.electronics.model.Cart;

public interface CartService {
	public void addToCart(Cart cart);
	public Cart getCartById(int cartId);
}
