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

import com.niit.electronics.model.Product;
import com.niit.electronics.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	private Model model;

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
   
   
    @RequestMapping("/delete/{productId}")
    public String deleteProduct(@PathVariable("productId") int productId) {
    	this.productService.deleteProduct(productId);
        return "redirect:/allProducts";
    }
    
    
   @RequestMapping(value="/allProducts")
    public String getAllProducts(ModelMap map)
    {
    	List<Product> list=productService.getAllProduct();
    	map.addAttribute("product", list);
    	return "allProducts";
    }
   
   
   @RequestMapping(value="/editProduct", method=RequestMethod.GET)
	public String editProductById(@RequestParam("productId") int productId, Model model){
		Product p = productService.getProduct(productId);
		model.addAttribute("getP", p);
		return "editProduct";
	}
  
   @RequestMapping(value="/editproduct/{productId}",method=RequestMethod.POST)
   public String editProduct(@PathVariable("productId") int productId, Model model, @ModelAttribute("edit") Product product)
   {
	  productService.editProduct(product);
	  
	   return "redirect:/allProducts";
   }
}
