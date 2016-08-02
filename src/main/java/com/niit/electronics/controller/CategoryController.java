package com.niit.electronics.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.electronics.model.Category;
import com.niit.electronics.service.CategoryService;


@Controller
public class CategoryController {

	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value = "/category", method=RequestMethod.GET)
	public String addCategoryPage(ModelMap map){
		map.addAttribute("allCategory", categoryService.getAllCategory());
		return "category";
	}
		
	@ModelAttribute("add")
	@RequestMapping(value = "/category", method=RequestMethod.POST)
	public String addCategory(@ModelAttribute("add") Category category, ModelMap model,BindingResult result, HttpServletRequest request){
		categoryService.addCategory(category);
		return " redirect:/category";
		
	}
	
	@RequestMapping("/deleteCat/{categoryId}")
	public String deleteCategory( @PathVariable("categoryId") int categoryId) {
		this.categoryService.deleteCategory(categoryId);
		return "redirect:/category";
		
	}
	
	@RequestMapping(value="/category")
	public String getAllCategory(ModelMap map){
		List<Category> list=categoryService.getAllCategory();
		map.addAttribute("category", list);
		return "category";
	}
	
	@RequestMapping(value="/editCategory",method=RequestMethod.GET)
	public String editCategoryById(@RequestParam("categoryId") int categoryId, Model model){
		Category c = categoryService.getCategory(categoryId);
		
		model.addAttribute("getC", c);
	    return "editCategory";	
	}
	@RequestMapping(value="/editCategory/{categoryId}",method=RequestMethod.POST)
	public String editCategory(@PathVariable("categoryId") int categoryID, Model model, @ModelAttribute("edit") Category category){
		categoryService.editCategory(category);
		return "redirect:/category";
	}
	
	
}
