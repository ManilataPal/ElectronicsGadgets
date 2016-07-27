package com.niit.electronics.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.electronics.model.Product;
import com.niit.electronics.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String additemPage(ModelMap map) {
		List<Product> list=productService.getAllProduct();
    	map.addAttribute("product", list);
		return "products";
	}
    @ModelAttribute("add")
	@RequestMapping(value = "/products", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("add") Product product, ModelMap model,BindingResult result) {
		productService.addProduct(product);
		return "redirect:/products";
	}
    
    @RequestMapping(params = "edit", method = RequestMethod.POST)
    public String editProduct(HttpServletRequest request) {
        return "redirect:/products";
    }
    @RequestMapping(params = "delete", method = RequestMethod.POST)
    public String deleteProduct(HttpServletRequest request) {
        return "redirect:/products";
    }
    
    
   @RequestMapping(value="/allProducts")
    public String getAllProducts(ModelMap map)
    {
    	List<Product> list=productService.getAllProduct();
    	map.addAttribute("product", list);
    	return "allProducts";
    }
   @RequestMapping(value="/editproduct",method=RequestMethod.POST)
   public String editProduct()
   {
	   return "editproduct";
   }
}
