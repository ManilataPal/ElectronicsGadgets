package com.niit.electronics.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.electronics.model.Product;
import com.niit.electronics.service.ProductService;

@Controller
public class ElectronicsController {

	@Autowired
	private ProductService productService;
	//display of index page '/' is used to redirect index or home page
	@RequestMapping(value={"/","/index"})
	public String homePage(ModelMap model)
	{
		List<Product> list=productService.getAllProduct();
		model.addAttribute("product", list);
		return "index";
	}
	
	
}
