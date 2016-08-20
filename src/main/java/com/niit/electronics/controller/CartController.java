package com.niit.electronics.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.electronics.model.Cart;
import com.niit.electronics.model.Product;
import com.niit.electronics.service.CartService;
import com.niit.electronics.service.ProductService;
import com.niit.electronics.service.UserService;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	@Autowired
	private ProductService productService;
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/shoppingCart")
	public String cart(@RequestParam("productId") int productId,Model model){
		Product p=productService.getProduct(productId);
		model.addAttribute("product",p);
		return "shoppingCart";
	}

	@RequestMapping("/checkout")
	public String setCart(@RequestParam("productId") int productId, Model model){
		Product p = productService.getProduct(productId);
		model.addAttribute("getP", p);
		return "checkout";
	}
	
	@ModelAttribute("instOrder")
	public Cart authentication(){
		return new Cart();
		
	} 
	@RequestMapping("/orderConfirm")
	public String addOrder(@ModelAttribute("instOrder") Cart cart , BindingResult result, Model model)
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName();
		cart.setQuantity(1);
		cart.setUserName(name);
		cartService.addToCart(cart);
		model.addAttribute("cart", cart);
		
		return "thankyouUser";
		
	}
}
