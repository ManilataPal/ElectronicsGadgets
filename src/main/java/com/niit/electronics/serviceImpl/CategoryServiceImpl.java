package com.niit.electronics.serviceImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.electronics.dao.CategoryDAO;
import com.niit.electronics.model.Category;
import com.niit.electronics.service.CategoryService;

@Service
@Transactional
@EnableTransactionManagement
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	public void addCategory(Category category) {
		categoryDAO.addCategory(category);
		
	}
	
	public void editCategory(Category category) {
		categoryDAO.editCategory(category);
		
	}

	public void deleteCategory(int cid) {
		categoryDAO.deleteCategory(cid);
		
	}

	public Category getCategory(int cid) {
		
		return categoryDAO.getCategory(cid);
	}

	public List<Category> getAllCategory() {
		return categoryDAO.getAllCategory();
		
	}

}
