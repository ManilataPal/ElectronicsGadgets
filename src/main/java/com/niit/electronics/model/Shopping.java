package com.niit.electronics.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
public class Shopping implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cartId;
	@OneToOne
	private User user;
	@OneToMany(mappedBy = "cart", cascade = CascadeType.ALL)
	List<Item> listitem;

	
	public int getCartId() {
		return cartId;
	}

	
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	
	public User getUser() {
		return user;
	}

	
	public void setUser(User u) {
		this.user = u;
	}

	
	public List<Item> getListitem() {
		return listitem;
	}

	
	public void setListitem(List<Item> listitem) {
		this.listitem = listitem;
	}

}
