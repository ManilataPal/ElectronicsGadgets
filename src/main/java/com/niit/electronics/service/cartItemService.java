package com.niit.electronics.service;

import com.niit.electronics.model.Item;

public interface cartItemService {

		public void addCartItem(Item cartItem);
		public Item getCartItemByProductId(int productId);
	}

