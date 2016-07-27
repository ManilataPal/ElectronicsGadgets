package com.niit.electronics.serviceImpl;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.electronics.dao.ProductDAO;
import com.niit.electronics.model.Product;
import com.niit.electronics.service.ProductService;
@Service
@Transactional
@EnableTransactionManagement
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;
	public void addProduct(Product product) {
		productDAO.addProduct(product);
	
		
	}

	public void editProduct(Product product) {
		productDAO.editProduct(product);
		
	}

	public void deleteProduct(int pid) {
		productDAO.deleteProduct(pid);
		
	}

	public Product getProduct(int pid) {
		
		return productDAO.getProduct(pid);
	}

	public List<Product> getAllProduct() {
		
		return productDAO.getAllProduct();
	}

}
