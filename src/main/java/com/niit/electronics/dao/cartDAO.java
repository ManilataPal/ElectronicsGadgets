package com.niit.electronics.dao;
import com.niit.electronics.model.Cart;

public interface cartDAO {
	public void addToCart(Cart cart);
public Cart getCartById(int cartId);
}
