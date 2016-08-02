package com.niit.electronics.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
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
import org.springframework.web.multipart.MultipartFile;

import com.niit.electronics.model.Category;
import com.niit.electronics.model.Category;
import com.niit.electronics.model.Product;
import com.niit.electronics.service.CategoryService;
import com.niit.electronics.service.ProductService;

@Controller
public class CategoryController {

	Path path;
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value = "/category", method=RequestMethod.GET)
	public String addCategoryPage(ModelMap map){
		List<Category> lis=categoryService.getAllCategory();
		map.addAttribute("category", lis);
		return "category";
	}
		
	@ModelAttribute("add")
	@RequestMapping(value = "/category", method=RequestMethod.POST)
	public String addCategory(@ModelAttribute("add") Category category, ModelMap model,BindingResult result, HttpServletRequest request){
		categoryService.addCategory(category);
		return "/category";
		
	}
	
	@RequestMapping("/delete/{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") int categoryId) {
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
	    return "category";	
	}
	@RequestMapping(value="/editcategory/{categoryId}",method=RequestMethod.POST)
	public String editCategory(@PathVariable("categoryID") int categoryID, Model model, @ModelAttribute("edit") Category category){
		categoryService.editCategory(category);
		return "redirect:/category";
	}
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String showUploadForm(HttpServletRequest request){
		return "category";
	}
	
}
