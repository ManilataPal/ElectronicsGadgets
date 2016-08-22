package com.niit.electronics.model;

import java.util.List;

public class cartList {

	List<Item> cart;

	public List<Item> getCart() {
		return cart;
	}

	public void setCart(List<Item> cart) {
		this.cart = cart;
	}

	public List<Item> cartList(List<Item> cart) {
		
		this.cart = cart;
		return cart;
	}
}
