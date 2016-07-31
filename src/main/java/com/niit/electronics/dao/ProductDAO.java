package com.niit.electronics.dao;

import java.util.List;

import com.niit.electronics.model.Product;

public interface ProductDAO {
	public void addProduct(Product product);
	public void editProduct(Product product);
		public void deleteProduct(int pid);
	public Product getProduct(int pid);
	public List<Product> getAllProduct();
	
	

}
