package com.niit.electronics.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.niit.electronics.model.Category;


@Component
public interface CategoryService {

	public void addCategory(Category category);
	public void editCategory(Category category);
	public void deleteCategory(int cid);
	public Category getCategory(int cid);
	public List<Category> getAllCategory();
}
