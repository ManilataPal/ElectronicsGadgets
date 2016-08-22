package com.niit.electronics.serviceImpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.electronics.dao.cartItemDAO;
import com.niit.electronics.model.Item;
import com.niit.electronics.service.cartItemService;

@Service
@Transactional
public class cartItemServiceImpl implements cartItemService {

	@Autowired
	cartItemDAO cartItem;

	public void addCartItem(Item cartItem) {
            
	}

	public Item getCartItemByProductId(int productId) {
		 return cartItem.getCartItemByProductId(productId);
	}
	
}
