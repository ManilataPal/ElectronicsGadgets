package com.niit.electronics.dao;

import java.util.List;

import com.niit.electronics.model.Category;

public interface CategoryDAO {
	
	public void addCategory(Category category);
	public void editCategory(Category category);
	public void deleteCategory(int cid);
	public Category getCategory(int cid);
	public List<Category> getAllCategory();
}
