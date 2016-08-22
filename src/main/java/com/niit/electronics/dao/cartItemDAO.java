package com.niit.electronics.dao;

import com.niit.electronics.model.Cart;
import com.niit.electronics.model.Item;

public interface cartItemDAO {

	public void addCartItem(Item cartItem);

    public void removeCartItem(Item cartItem);
    Item getCartItemByProductId(int productId);


    public void removeAllCartItems(Cart cart);

}
